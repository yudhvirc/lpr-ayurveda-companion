# Personal LPR / Amlapitta profile

This folder is yours. The plugin in `../lpr-ayurveda-plugin` reads and updates it but never ships it.

| File | Holds | Who writes it |
|---|---|---|
| `profile.md` | who you are: age band, desha (place/climate), routine, satmya (habits), story, goals, vikriti baseline | intake skill, then updated by conversation |
| `prakriti.md` | constitution questionnaire results and evidence | intake, plus evidence added over time |
| `vaidya-plan.md` | your vaidya's current prescriptions, pathya-apathya, next visit. Authoritative. | vaidya-prep `after`, or you |
| `remedies-log.md` | everything tried, dated, with effect | conversation, check-in |
| `observations.md` | durable facts noticed about you (triggers, patterns, relief) | conversation, check-in |
| `questions-for-vaidya.md` | open questions to bring to the next visit; answered ones move down | any skill |
| `journal/YYYY-MM-DD.md` | daily check-in entries (see schema in corpus file 07) | check-in skill, scheduled task |
| `vaidya-visits/` | one-page visit preparations | vaidya-prep skill |
| `state.json` | `intakeDone`, `lastCheckin`, `lastOffered` (used by the session hook) | scripts |

You may edit any file by hand; keep the headings so the skills can find sections. To move this folder, set the environment variable `LPR_PROFILE_DIR` to the new path.
