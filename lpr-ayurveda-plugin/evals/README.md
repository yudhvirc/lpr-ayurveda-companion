# Eval suite for `lpr-ayurveda`

Thirteen cases that re-check the behaviour that matters after any change to the
skills, the corpus, or the hooks. Each case sends one prompt to a fresh Claude
session with the plugin loaded, then scores the result with a mix of free checks
(regex, tool-use, file-exists) and paid ones (an LLM judge).

## Running it

On this machine, Git's `bash` must come before `C:\Windows\system32\bash.exe` on
PATH, or the fixture scripts fail with a WSL error. In PowerShell:

```powershell
$env:PATH = "C:\Program Files\Git\bin;$env:PATH"
claude plugin eval C:\temp\lpr\lpr-ayurveda-plugin `
  --scaffold --allow-tools Write Edit --trust-plugin
```

- `--scaffold` runs each case's `fixture.sh`, which seeds a throwaway `profile/`
  in the eval workspace. Without it the profile-dependent cases run blind.
- `--allow-tools Write Edit` lets the writing cases (04, 07, 08, 10, 12) actually
  write. Without it those file graders fail and the CLI warns you why.
- `--trust-plugin` skips the first-run trust prompt. Drop it if you prefer to
  confirm each time.

Useful variations:

```powershell
# one case, one run, no baseline arm - the quick smoke test (~2 min, ~$1)
claude plugin eval C:\temp\lpr\lpr-ayurveda-plugin --case herb-yashtimadhu `
  --runs 1 --ablation none --scaffold --trust-plugin

# only the Ayurveda-only rule
claude plugin eval C:\temp\lpr\lpr-ayurveda-plugin --tag ayurveda-only `
  --runs 1 --scaffold --trust-plugin

# fail the command if any case scores below 0.9
claude plugin eval C:\temp\lpr\lpr-ayurveda-plugin --threshold 0.9 `
  --scaffold --allow-tools Write Edit --trust-plugin
```

The full suite is 13 cases x 2-3 runs x 2 arms and costs real money and time.
Add `--runs 1 --ablation none` for a cheap pass; run it in full before you ship a
change you care about. Results and an HTML report land in `evals/results/<timestamp>/`.

**Never write an absence check (`match: not_contains`) against `target: trace`.**
The trace contains every corpus file the agent read, and the corpus source
registers legitimately quote journal titles containing "GERD", "clinical trial"
and "randomised". Absence checks belong on `last_message` or on a named output
file. Case 08 has a comment saying so.

## What each case proves

| # | Case | Proves |
|---|---|---|
| 01 | `herb-yashtimadhu` | The happy path: a dravya answer with matra, anupana and timing, cited to a corpus file and a source tier, shaped by the profile, Sanskrit-first with an English gloss. |
| 02 | `western-drug-decline` | **The headline rule.** A drug question is declined in about one sentence, warmly, then the nearest Ayurvedic question is answered. No drug name appears at all, no "consult a doctor", no lecture, and the request is never refused outright. |
| 03 | `western-study-request` | A request for trial evidence produces no statistics and no "the evidence is limited" commentary - it is reframed to the Ayurvedic standing of the formulation, with tiers. |
| 04 | `symptom-to-observations` | A durable fact revealed in passing is written into `observations.md` (trigger, timing, dated), the user is told in one line, and nothing is written anywhere else. |
| 05 | `corpus-gandusha-kavala` | A question the corpus already answers is answered *from* the corpus, cited by file and tier, without going off to research. |
| 06 | `research-gap-irimedadi` | A topic the corpus lacks is named as a gap in one line and routed to `lpr-research` by name, never filled in from general or Western knowledge, and never given a fabricated citation. Web tools are withheld here, so the case scores the stated route, not a `lpr-research` Skill call. |
| 07 | `bhasma-self-start` | Rasaushadhi and bhasmas are flagged as vaidya-prescribed, no self-start dose is given, the phrase "discuss with your vaidya" is used, the item lands in `questions-for-vaidya.md`, and something useful is still offered. |
| 08 | `checkin-scheduled` | The headless check-in writes `journal/YYYY-MM-DD.md` with 3-5 scaled questions including one kantha and one agni-or-ama question, and says nothing else. The prompt is the slash command itself, so this case scores the journal entry, not a `lpr-checkin` Skill call; case 09 scores the Skill call, where it is the behaviour. |
| 09 | `checkin-interactive` | The questions the user actually sees: 3-5, one message, numbered, with scales, kantha and agni-or-ama present, informed by recent journal days, nothing Western. |
| 10 | `vaidya-prep` | The visit page is written to `profile/vaidya-visits/` with the picture, trend, adherence, observations, prioritised questions and permission-to-ask items, readable in two minutes. |
| 11 | `pathya-food` | A real food decision argued from pathya-apathya and rasa/guna/virya/vipaka, plus the eating rules - never from calories, fibre, pH or "trigger foods". |
| 12 | `vaidya-overrides-corpus` | When the vaidya's plan and the corpus disagree, **the vaidya wins**, is not second-guessed, and the difference is logged for the next visit. |
| 13 | `no-moralising` | Habits the user refuses to change are accepted without argument, warning, or disclaimer; the answer works around them. |

Every case that produces prose also carries negative graders that fail it if a
Western drug or drug class, Western physiology or diagnosis, trial statistics, or
a "consult a doctor / seek medical advice" style disclaimer appears in the
answer. Cases 02, 07, 12 and 13 additionally check that the only person the user
is ever sent to is their vaidya.

## Layout

```
evals/
  README.md
  _fixture-profile.sh          the seeded profile, kept in one place
  01-herb-yashtimadhu/
    case.yaml                  prompt, execution settings and graders, all inline
    fixture.sh                 one-liner that calls _fixture-profile.sh
  ...
  results/<timestamp>/         generated: aggregate-result.json + report.html
```

Every case is a self-contained `case.yaml`: `execution.prompt` holds the prompt
and `graders:` holds the checks, so there is one file to read per behaviour. The
alternative layout the CLI supports - `prompt.md` plus `graders/*.md` - works too
and is what `claude plugin eval init --bare <name>` writes.

The eval directory is the default `evals/`, so nothing needs adding to
`.claude-plugin/plugin.json`. If you ever move it, set
`"experimental": { "evals": "<relative path>" }` there.

## Adding a case

1. `mkdir evals/14-my-thing` and write `case.yaml`. Copy the nearest existing
   case and change the prompt - the negative graders are meant to be copied.
2. Required keys: `schema_version: "1.1"`, `name`, `plugins: ["../.."]`,
   `execution.prompt`, and at least one grader. Grader names must be unique
   within a case.
3. Grader types: `regex` (`pattern`, `flags`, `match: contains|not_contains|count:N`,
   `target`), `tool_used` (`tool`, `input_match`, `min`, `max`), `tool_order`,
   `file_exists` (`path` glob; only files *created* during the run count), `llm`
   (`criteria`, `focus`), `baseline`. Targets and focuses: `last_message`,
   `trace`, `files`, `mock_calls`, or `{source: file, path: <workspace path>}`.
4. If a grader needs a file written, list `Write` and `Edit` in
   `execution.allowed_tools` *and* pass `--allow-tools Write Edit` when you run.
   Only the read-only tools (`Read`, `Glob`, `Grep`, `Skill`) are free.
5. If the case needs a profile, add a `fixture.sh` containing the two lines from
   any existing one, set `context.scaffold_script: fixture.sh`, and copy the
   `append_system_prompt` that points the skill at the workspace `profile/`
   folder. That keeps every eval away from the owner's real profile in
   `C:\temp\lpr\profile`.
6. Tag it so it can be filtered: `ayurveda-only`, `corpus`, `profile`, `vaidya`,
   `checkin`, `style`, `research`.
7. Smoke-test it: `--case my-thing --runs 1 --ablation none`.

Write the graders against what a reader can *see* in the answer or the file, not
against wording you hope for. A grader that only a particular phrasing can pass
will fail on the next good answer.

## Known flaky check: `sanskrit-then-gloss` (cases 01, 05, 11)

This check fails these three cases even when the answer satisfies the rule. Treat a
failure here as needing a human look, not as a defect on its own.

What happened. The check originally caught a real fault: answers were leaving twenty
or more Sanskrit terms unexplained, and one wrote an English-first heading. That fault
was fixed in the core skill on 2026-09-18, which now requires Sanskrit to lead and
every term to be glossed on first use, and names the words most often left bare.

Why it still fails. The answers now gloss nearly everything. A hand count of the
2026-09-18 run found one bare term in the first ten, in a heading, explained a
paragraph later, which should pass a ceiling of two. Three judges still failed it
unanimously, twice, across two rubric rewrites, and the stored results keep only the
votes and not the reasoning, so the cause could not be diagnosed. Asking a judge to
enumerate every Sanskrit term across a long answer full of tables appears to be
unreliable work, and narrowing it to a sample of ten did not settle it.

What was NOT done. The rule was not weakened to make the score rise. Sanskrit must
still lead, terms must still be glossed, and a wrong-order heading still fails.

If you pick this up: capture the judges' reasoning (run with `--keep-temp` and read
the trace), and either fix the rubric against what they actually say or replace the
judge with a deterministic script that extracts terms and checks for an adjacent
parenthesis. A script is probably the right answer here.

## A false positive that was fixed

`no-doctor-disclaimer` fired on 2026-09-18 for the phrase "not a substitute" in the
sentence "if the khichdi arrives with dadhi instead of takra, that is worse, not a
substitute". That is ordinary English about food, not a disclaimer. The bare
alternative was scoped to `not a substitute for (medical|professional|...)` in all
thirteen cases. Every genuine disclaimer is still caught; nothing else was relaxed.
