# LPR Ayurveda Companion

A Claude Code plugin for **LPR** (laryngopharyngeal reflux, "silent reflux") that works entirely
inside Ayurveda, where the condition is understood as **Amlapitta**, specifically **Urdhvaga
Amlapitta**, sour-pitta travelling upward into the **kantha** (throat) and affecting the **swara**
(voice).

It answers from a cited corpus, keeps a daily record, and prepares your visits to your vaidya
(Ayurvedic physician) so that limited appointment time counts.

**No Western medicine enters the corpus, the answers, or the journal.** The only escalation phrase
used anywhere is "discuss with your vaidya".

Guide: [`docs/guide.html`](docs/guide.html) — open it in any browser, no server needed.

## Install

```
claude plugin marketplace add yudhvirc/lpr-ayurveda-companion
claude plugin install lpr-ayurveda@lpr-ayurveda
```

Then run `/lpr-ayurveda:lpr-intake` to build your profile. It takes about fifteen minutes and can be
stopped after any part. Until it knows your constitution, your agni (digestive fire) and your
vaidya's plan, the companion can only give the tradition's general answer rather than yours.

## Commands

| Command | What it does |
|---|---|
| `/lpr-ayurveda:lpr-intake` | Builds your profile: prakriti questionnaire, graded symptom baseline, agni and koshtha, your vaidya's plan, what you have already tried |
| `/lpr-ayurveda:lpr-checkin` | Today's three to five questions, always one on the throat and one on digestion. Writes the journal entry and reads the day back |
| `/lpr-ayurveda:lpr-vaidya-prep prep` | A one-page visit summary: symptom trends, adherence, up to seven prioritised questions |
| `/lpr-ayurveda:lpr-vaidya-prep after` | Records what the vaidya said into the plan |
| `/lpr-ayurveda:lpr-research <topic>` | Researches something the corpus lacks, from Ayurvedic sources only, and writes it in with citations |
| `/lpr-ayurveda:lpr-ayurveda <question>` | Ask directly, if it did not trigger on its own |

You rarely need these. Any mention of reflux, throat, acid, digestion, herbs, diet, routine or your
vaidya pulls the companion in automatically.

## The daily check-in

Two prompts, deliberately overlapping:

1. **A session hook.** Open any Claude Code session and, if nothing is recorded for today, it offers
   the check-in in one sentence. Decline and it stays quiet until tomorrow.
2. **A scheduled task (Windows).** Writes the day's questions into your journal each morning whether
   or not you open Claude Code.

```
powershell -NoProfile -ExecutionPolicy Bypass -File .\lpr-ayurveda-plugin\scripts\install-scheduler.ps1 -At "07:30"
```

The uninstaller beside it removes the task. On macOS or Linux the session hook works as-is; the
scheduled task is Windows-only, and a `cron` entry calling the same headless command does the same
job.

## What it knows

Seven corpus files, roughly 4,900 lines. Each was written by one research pass and then audited
against primary Sanskrit texts by a second, which corrected around a hundred citations, removed a
passage attributed to a text that does not contain it, and marked what could not be confirmed
instead of keeping it silently.

| File | Covers |
|---|---|
| `01-nidana-samprapti` | What the disease is, its causes, how each sign maps to the throat, differential frames |
| `02-chikitsa-aushadha` | Treatment principles, single herbs with dose and anupana, classical formulations, throat therapy, panchakarma |
| `03-ahara-pathya-apathya` | Diet: wholesome and unwholesome lists, rasa and guna logic, eating rules, quantity, timing, incompatible combinations |
| `04-vihara-dinacharya-yoga-manas` | Daily routine, the natural urges, voice care, yoga with its cautions, the mind, season and climate |
| `05-institutional-guidelines-and-case-literature` | Ministry and council guidance, pharmacopoeia entries, forty-six Ayurvedic case reports |
| `06-practitioner-lineage-and-home-practice` | How named vaidyas explain it, home preparations with quantity and timing, Kerala approaches |
| `07-pariksha-profile-and-tracking` | Constitution questionnaire, graded symptom scale, ninety-field daily log, eighty-seven rotating questions |

Every claim carries a source tier and a verification tag:

- **T1** classical texts, **T2** Ayurvedic institutions, **T3** Ayurvedic journals, **T4**
  practitioner and lineage teaching
- `[verified x2]` two independent sources agree, `[single-source]` only one,
  `[variant]` sources disagree and both are given, `[unverified]` kept but unconfirmed

When texts conflict, the older authority wins. See `lpr-ayurveda-plugin/corpus/CORPUS-RULES.md`.

## Your records stay yours

Personal data is never stored in this repository. On first run the plugin seeds a profile folder in
its own per-plugin data directory, which survives updates:

```
~/.claude/plugins/data/<plugin-id>/profile/
```

Set an `LPR_PROFILE_DIR` environment variable to keep it somewhere else. To see where yours resolves
to:

```
node .\lpr-ayurveda-plugin\scripts\profile-dir.js --verbose
```

That folder holds your profile, constitution notes, your vaidya's plan, a remedies log, observations,
open questions, and one journal file per day. All plain Markdown, all yours to edit by hand.

## Tests

Thirteen behaviour cases run with `claude plugin eval`. Negative checks fail the case if any Western
drug, Western physiology, trial statistic or medical disclaimer appears in an answer.

```
claude plugin eval .\lpr-ayurveda-plugin --scaffold --allow-tools Write Edit --trust-plugin
```

A full pass costs real money, so run a single case by name while iterating. One check on Sanskrit
glossing is documented as unreliable in `lpr-ayurveda-plugin/evals/README.md` rather than quietly
removed.

## Known limits

- **The national Ayurvedic morbidity codes are unverified.** Three routes failed to retrieve them, so
  they are marked unverified rather than guessed.
- **Some classical verses are cited through journals that quote them**, not the originals. Each is
  tagged, so you can see which.
- **Head-of-bed elevation has no classical basis.** An early answer suggested it; the corpus now says
  plainly that it is a practitioner convention, not tradition.

## Licence

MIT. See [`LICENSE`](LICENSE). The corpus quotes and paraphrases classical Ayurvedic texts that are
long out of copyright, and cites every source it draws on; the licence covers this compilation and
the plugin code, not the underlying traditional knowledge.

## What this is

This treats Ayurveda as a working system on its own terms, by design. It is a companion to a
relationship with a qualified vaidya, not a replacement for one. Mineral and metallic preparations,
calcined medicines and the cleansing procedures are reserved to the physician by the tradition
itself, and the plugin will not help you start or adjust them.
