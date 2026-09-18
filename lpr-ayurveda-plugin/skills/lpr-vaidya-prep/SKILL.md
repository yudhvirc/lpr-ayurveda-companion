---
description: "Prepare for or debrief a visit to the user's vaidya (Ayurvedic physician). 'prep' compiles a one-page summary from the profile and journal with prioritised questions; 'after' records the vaidya's new instructions into vaidya-plan.md. Use when the user mentions an upcoming or recent vaidya appointment, or asks what to tell or ask their vaidya."
argument-hint: "prep | after"
---

# Vaidya visit

Paths: corpus = `${CLAUDE_PLUGIN_ROOT}/corpus`. **Resolve the profile directory before reading or writing anything.** Run this once and use exactly what it prints:

```
node "${CLAUDE_PLUGIN_ROOT}/scripts/profile-dir.js" --seed
```

It prints one absolute path, and creates the folder from the bundled templates if this is a first run. Do not guess the path, do not assume a sibling folder, and never write anywhere else. If node is unavailable, fall back in this order: the `LPR_PROFILE_DIR` environment variable, then `${CLAUDE_PLUGIN_DATA}/profile`, then `${CLAUDE_PLUGIN_ROOT}/../profile`. Follow every rule in `${CLAUDE_PLUGIN_ROOT}/skills/lpr-ayurveda/SKILL.md`. The vaidya's time is short; the output must be readable in two minutes.

## `prep` (default)
1. Read `profile.md`, `prakriti.md`, `vaidya-plan.md`, `remedies-log.md`, `observations.md`, `questions-for-vaidya.md`, and all journal entries since the last visit (or the last 30 days).
2. Use the vaidya-visit template in `corpus/07-pariksha-profile-and-tracking.md` and the NAMASTE / NAMC terms in corpus 05 so the summary speaks the vaidya's language.
3. Write `profile/vaidya-visits/YYYY-MM-DD-prep.md` with, in this order:
   - One-line picture: prakriti (self-assessed or vaidya-confirmed), current dominant vikriti, agni, koshtha, ritu.
   - Trend table since last visit: each lakshana's average grade this period versus the previous one, best and worst days, count of flares and the nidana found for each.
   - Adherence: each prescribed item with taken-as-directed percentage and any anupana or timing problems; pathya rules kept and slipped.
   - Observations worth the vaidya's attention (max 5 bullets, dated).
   - Questions, prioritised (max 7), each one line, each tagged with why it matters (for example "kapha avarana signs rising: ask whether nasya or vamana is appropriate this season").
   - Items to ask permission for (anything rasaushadhi, panchakarma, or a new formulation the corpus suggested).
4. Print the page to the user and offer to shorten it to five lines for a very short visit.

## `after`
Ask the user for what the vaidya said (free text). Then:
- Update `vaidya-plan.md`: date of visit, prakriti and vikriti as stated, every changed or new item with dose, anupana, timing, duration; pathya-apathya given; next visit date; what to observe.
- Move answered items out of the Open table in `questions-for-vaidya.md` into the Answered section with the answer and date.
- Append a dated note to `remedies-log.md` for stopped or started items.
- Print a 5-line recap and any point where the vaidya's instruction differs from the corpus. Report the vaidya's instruction as authoritative; do not second-guess it.
