---
description: "Daily Ayurvedic check-in for the user's LPR journal: asks 3-5 rotating questions (agni, ama, kantha symptoms, pathya, aushadha, manas), records answers in profile/journal, reflects briefly in Ayurvedic terms. Use when the user says check-in, journal, log today, how am I doing, or when the SessionStart nudge says a check-in is due. Pass 'scheduled' when run headless to only write the day's questions."
argument-hint: "[scheduled | answers in free text]"
---

# Daily check-in

Paths: corpus = `${CLAUDE_PLUGIN_ROOT}/corpus`. **Resolve the profile directory before reading or writing anything.** Run this once and use exactly what it prints:

```
node "${CLAUDE_PLUGIN_ROOT}/scripts/profile-dir.js" --seed
```

It prints one absolute path, and creates the folder from the bundled templates if this is a first run. Do not guess the path, do not assume a sibling folder, and never write anywhere else. If node is unavailable, fall back in this order: the `LPR_PROFILE_DIR` environment variable, then `${CLAUDE_PLUGIN_DATA}/profile`, then `${CLAUDE_PLUGIN_ROOT}/../profile`. Follow every rule in `${CLAUDE_PLUGIN_ROOT}/skills/lpr-ayurveda/SKILL.md` (Ayurveda only, vaidya escalation, recording).

Today's date: use the system date. Journal file: `profile/journal/YYYY-MM-DD.md`.

## 1. Gather context (silently)
- Read `profile/profile.md`, `prakriti.md`, `vaidya-plan.md`, `observations.md`.
- Read the last 7 journal entries: the `profile/journal/*.md` files only, sorted by name descending (skip `README.md` and the scheduler's `.scheduler.log`), to see trends and which questions were asked recently.
- Read the question bank and the daily-log schema in `corpus/07-pariksha-profile-and-tracking.md` (sections on the daily tracking template and the question bank). If that file is missing, use the fallback bank at the end of this skill.
- Note the season (ritu) and the user's desha from the profile.

## 2. Choose questions (3 to 5)
Rotation rules:
- Always one **kantha** question (throat burning, throat clearing, hoarseness, globus, praseka) graded 0-3.
- Always one **agni or ama** question, worded with one of these terms so it is unmistakable: agni, ama, true hunger (kshudha), tongue coating, heaviness after meals, udgara (belching).
- One **nidana** question that rotates across ahara, vihara, manas, and vega (what was eaten late, sleep timing, day sleep, anger or worry, suppressed urges).
- One **aushadha / pathya adherence** question only if `vaidya-plan.md` lists something.
- Add a follow-up on anything flagged yesterday (for example, yesterday's flare after a late meal).
- The total is 3 to 5, the follow-up counted: if a sixth would appear, drop the nidana or adherence question instead. Only the kantha and the agni/ama questions are fixed.
- Do not repeat the same optional question two days running; the bank has tags for this.
- Adjust to season: Sharad (autumn) means more pitta questions; Varsha (monsoon) or cold damp means more agni and kapha; cold dry means vata (dryness, sleep, constipation).

## 3. Pick the mode
If `$ARGUMENTS` is exactly `scheduled` (the headless morning task passes this), do 3a and nothing else. In every other case do 3b, treating any other `$ARGUMENTS` text as the user's answers.

## 3a. Mode `scheduled` (headless morning run)
Only write. Create `journal/YYYY-MM-DD.md` with:

```
---
date: YYYY-MM-DD
status: pending
ritu: <season>
---
## Questions for today
1. ...
2. ...
(3 to 5 questions, each with the 0-3 scale or the allowed values in brackets)

## Answers
(answer here in any words, or run /lpr-ayurveda:lpr-checkin)
```

Do not ask anything and do not print advice. Finish by printing one line: "Questions written to <path>".

## 3b. Interactive mode
- If a `status: pending` file exists for today, ask those questions; otherwise ask the ones you chose.
- Ask **between 3 and 5 questions — never two, never six — all in ONE message**, numbered `1.` to at most `5.`, and then wait. One question per number: no compound "and also…" question, no unnumbered extra tacked on, no follow-up question in a second message before the answers come. Every number ends with its scale or allowed values in brackets: `[0-3]`, `[yes / partly / no]`, `[all / some / none]`; a question with no bracket does not belong in the list. At most one short orienting line before the list (what you read, the ritu, yesterday's thread) and one line after it inviting free text — no advice, no warning, no reflection. Accept free-text answers; if `$ARGUMENTS` already holds answers, use them without re-asking.
- Then write or replace `journal/YYYY-MM-DD.md`. The file MUST start with exactly this frontmatter, `---` on the very first line and each key at the start of its own line (the SessionStart hook greps `^status:` and will keep nudging all day if it is missing or indented):

```
---
date: YYYY-MM-DD
status: answered
ritu: <season>
---
```

  Below the frontmatter put the day's questions and answers, then the filled daily-log fields from the corpus 07 schema (§6.1); fields not asked about stay blank. Corpus 07 §6.1 does not itself show the frontmatter — it is required here regardless.
- Update `profile/state.json`: `lastCheckin` = today (keep other keys).
- Record durable facts per Rule 4 of the core skill (observations, remedies, prakriti evidence, questions for vaidya).

## 4. Reflect (interactive only), at most 6 lines
- Name the likely dosha picture of today's answers in Ayurvedic terms (for example "pitta with kapha avarana: daha plus praseka"), citing the interpretation rules in corpus file 07.
- Give ONE practical pathya or dinacharya focus for today from the corpus, suited to prakriti and season, that does not touch the vaidya's prescriptions.
- Mention a trend only if the last 7 entries show one (for example "third late dinner this week, each followed by morning hoarseness").
- If something belongs with the vaidya, add it to `questions-for-vaidya.md` and say so in one line.

## Fallback question bank (used only if corpus 07 is unavailable)
- Kantha: burning in the throat today [0 none, 1 mild, 2 moderate, 3 strong]; throat clearing [0 rare, 1 a few times, 2 hourly, 3 constant]; hoarseness on waking [0-3]; lump feeling (gala graha) [0-3]; mucus or saliva excess (praseka) [0-3].
- Agni and ama: was real hunger present at lunch and dinner [yes / partly / no]; tongue coating this morning [none / thin white / thick white / yellow]; heaviness after meals [0-3]; sour or bitter belching [0-3].
- Nidana: last meal time yesterday; time you slept; slept in the day [yes / no]; cold, sour, fermented, fried, or heavy food yesterday [list]; coffee, tea, chocolate [list]; anger, worry, or fear that stayed with you [0-3]; held back a belch, sneeze, urge, or cough [yes / no].
- Aushadha and pathya: took each item in the vaidya plan on time with its anupana [all / some / none]; which pathya rule slipped [free text].
- Mala and nidra: stool this morning [formed / loose / hard / sticky / none]; sleep quality [0-3].
