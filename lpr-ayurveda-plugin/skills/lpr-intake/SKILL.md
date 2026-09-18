---
description: "First-time (or refresh) Ayurvedic intake for the LPR companion: builds the user's profile, including the prakriti (constitution) questionnaire, current vikriti and Amlapitta lakshana baseline, agni, koshtha, satmya, desha and kala, the vaidya's current plan, remedies tried, and goals, then writes the profile files. Use when the profile is empty, the user says intake, set up my profile, or wants to redo their prakriti."
argument-hint: "[part: about | prakriti | vikriti | vaidya-plan | history | all]"
---

# Intake

Paths: corpus = `${CLAUDE_PLUGIN_ROOT}/corpus`. **Resolve the profile directory before reading or writing anything.** Run this once and use exactly what it prints:

```
node "${CLAUDE_PLUGIN_ROOT}/scripts/profile-dir.js" --seed
```

It prints one absolute path, and creates the folder from the bundled templates if this is a first run. Do not guess the path, do not assume a sibling folder, and never write anywhere else. If node is unavailable, fall back in this order: the `LPR_PROFILE_DIR` environment variable, then `${CLAUDE_PLUGIN_DATA}/profile`, then `${CLAUDE_PLUGIN_ROOT}/../profile`. Follow every rule in `${CLAUDE_PLUGIN_ROOT}/skills/lpr-ayurveda/SKILL.md`.

Tell the user up front: about 15 minutes, five short parts, can stop after any part and resume later with `/lpr-ayurveda:lpr-intake <part>`. `$ARGUMENTS` may name one part: `about` = Part 1, `prakriti` = Part 2, `vikriti` = Part 3, `vaidya-plan` = Part 4, `history` = Part 5, `all` or empty = every part in order. Run only the named part, then stop and say how to resume.

Read `corpus/07-pariksha-profile-and-tracking.md` first; it holds the prakriti questionnaire, vikriti scale, agni, koshtha and ama items, and the dashavidha pariksha list. Ask questions in batches of 6-10, in plain language with the Sanskrit term in parentheses, allowing "skip". Use AskUserQuestion when a question has fixed options (max 4 per call); use free text for the rest.

## Part 1: About you (`profile.md`)
Name to use, age band (vaya), where they live and its climate (desha: hot-humid, cold-dry, temperate), work rhythm and typical meal times, food habits (vegetarian or not, cuisine), what is habitual (satmya: climate, tastes, coffee or tea, spice), how long LPR-type symptoms have existed and their story in the user's words, goals for this companion.

## Part 2: Prakriti (`prakriti.md`)
Run the questionnaire from corpus 07 (about 30-45 items; if too long, use the 20 highest-signal items and mark the rest "not asked"). Score vata, pitta, kapha; state the likely prakriti (for example pitta-kapha) and manasa prakriti as a working guess; write the evidence lines. Label it "self-assessed; confirm with vaidya".

## Part 3: Vikriti baseline (`profile.md` baseline section, and `journal/YYYY-MM-DD.md` as day 0)
Grade the Amlapitta and kantha lakshanas 0-3 (from corpus 07: amlodgara, hrit-kantha daha, utklesha, avipaka, gaurava, aruchi, kantha daha, gala graha, swarabheda, kasa, praseka, nishthivana), agni type (vishama, tikshna, manda, sama), koshtha (mridu, madhya, krura), ama signs (tongue, stool, heaviness), sleep, stool, hunger timing, what worsens and what relieves, time of day and season of flares.

## Part 4: Vaidya plan (`vaidya-plan.md`)
Vaidya's name (as the user wishes), when last seen, next visit, prakriti and vikriti as the vaidya stated it, every prescribed item: name, form, dose, anupana, timing (aushadha sevana kala), duration; pathya and apathya lists given; any panchakarma done or planned; what the vaidya asked to observe. Mark the plan as authoritative.

## Part 5: History (`remedies-log.md`)
Everything tried so far within Ayurveda and home practice: what, how long, effect, why stopped. If the user mentions non-Ayurvedic things, record only "other approaches tried previously; not tracked here" without detail.

## Finish
- Write all files (templates already exist; fill their sections, keep headings).
- Set `profile/state.json`: `intakeDone: true`, `intakeDate`, keep other keys.
- Print a 6-line summary: prakriti guess, dominant vikriti picture, agni and koshtha, top three lakshanas, number of vaidya plan items, and the single most relevant pathya focus from the corpus for their picture and season. Add unresolved points to `questions-for-vaidya.md`.
