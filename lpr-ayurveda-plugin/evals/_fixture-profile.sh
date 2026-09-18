#!/usr/bin/env bash
# Reference copy of the seeded profile used by the case fixtures.
# Each case that needs a profile has its OWN fixture.sh (scaffold_script must
# live in the case directory), so this file is documentation, not a runtime
# dependency. Keep the case fixtures in step with it when you change the story.
set -euo pipefail

mkdir -p profile/journal profile/vaidya-visits

cat > profile/profile.md <<'EOF'
# Profile

## About me
- Name to use: R
- Age band (vaya): madhyama vaya (40-50)
- Lives in / climate (desha): Pune, India - warm, moderately dry
- Work rhythm and usual meal times: desk work; breakfast 08:30, lunch 13:30, dinner often 21:30
- Food habits and cuisine: vegetarian, Maharashtrian
- Habitual things (satmya): two coffees a day, moderate chilli, no alcohol
- Language preference for terms: Sanskrit with English gloss

## My LPR story (in my words)
Throat burning and constant throat clearing for about two years. Worst in the
morning and on days after a late dinner. Voice goes rough by evening.

## Goals for this companion
Fewer flares, less throat clearing, and keeping my vaidya's plan on track.

## Vikriti baseline (intake date: 2026-08-20)
| Lakshana | Grade 0-3 | Note |
|---|---|---|
| Amlodgara / tikta udgara (sour or bitter belching) | 2 | worse after a late dinner |
| Hrit-kantha daha (burning chest/throat) | 2 | mornings |
| Kantha daha (throat burning) | 2 | all day on bad days |
| Gala graha (lump / globus) | 2 | |
| Swarabheda (hoarseness) | 1 | on waking |
- Agni: tikshna with spells of manda
- Koshtha: madhya
- Ritu at baseline: Sharad (autumn)
EOF

cat > profile/prakriti.md <<'EOF'
# Prakriti (constitution)

Status: self-assessed 2026-08-20; confirm with vaidya.

## Result
- Vata score: 9
- Pitta score: 17
- Kapha score: 14
- Working prakriti: pitta-kapha
- Manasa prakriti: rajas-dominant
- Vaidya's stated prakriti (if given): pitta-kapha (agrees)

## Evidence gathered over time (dated)
- 2026-08-20: sharp hunger, heat intolerance, sound sleep, steady build.
EOF

cat > profile/vaidya-plan.md <<'EOF'
# Vaidya plan (authoritative)

- Vaidya: Vaidya S.
- Last visit: 2026-08-28
- Next visit: 2026-10-02
- Prakriti as stated by vaidya: pitta-kapha
- Vikriti / diagnosis as stated: Urdhvaga Amlapitta with kantha involvement

## Current prescriptions
| Item | Form | Dose | Anupana | Timing (kala) | Duration | Started | Notes |
|---|---|---|---|---|---|---|---|
| Avipattikara churna | churna | 3 g | warm water | before food, twice daily | 8 weeks | 2026-08-28 | |
| Yashtimadhu ghana vati | vati | 250 mg | warm water | after food, twice daily | 6 weeks | 2026-08-28 | |
| Shatavari ghrita | ghrita | 5 ml | warm water | early morning | 4 weeks | 2026-08-28 | |

## Pathya (do) given by vaidya
- Dinner before 19:30.
- Cooked tomato in small quantity at lunch is allowed for you.
- Warm water through the day.

## Apathya (avoid) given by vaidya
- Curd at night, deep-fried food, coffee after noon.

## Panchakarma done or planned
- None yet. Vaidya mentioned considering nasya after the next visit.

## What the vaidya asked me to observe
- Morning throat burning grade, and whether hoarseness clears by noon.
EOF

cat > profile/observations.md <<'EOF'
# Observations about me (durable facts, dated)

## Triggers (nidana noticed)
- 2026-08-30: dinner after 21:00 is followed by morning kantha daha.

## Relief patterns
- 2026-09-02: warm water sipping through the morning eases throat clearing.

## Symptom patterns (time of day, season, after what)
- 2026-09-05: worst between waking and mid-morning.

## Other
EOF

cat > profile/remedies-log.md <<'EOF'
# Remedies and practices log

| Date | What (name, form) | Dose / how | Anupana / timing | Duration | Effect in Ayurvedic terms | Status |
|---|---|---|---|---|---|---|
| 2026-08-28 | Avipattikara churna | 3 g | warm water, before food | ongoing | amlodgara down from 3 to 2 | current |

## Notes
EOF

cat > profile/questions-for-vaidya.md <<'EOF'
# Questions for my vaidya

## Open
| Added | Question | Why it matters |
|---|---|---|
| 2026-09-10 | Is gandusha suitable for me daily, and with which liquid? | kantha daha is the worst lakshana |

## Answered
EOF

cat > profile/journal/2026-09-15.md <<'EOF'
---
date: 2026-09-15
status: answered
ritu: Sharad
---
## Answers
- Kantha daha: 2
- Throat clearing: 2
- True hunger at lunch: partly
- Tongue coating: thin white
- Last meal yesterday: 21:40
EOF

cat > profile/journal/2026-09-16.md <<'EOF'
---
date: 2026-09-16
status: answered
ritu: Sharad
---
## Answers
- Kantha daha: 3
- Throat clearing: 3
- True hunger at lunch: no
- Tongue coating: thick white
- Last meal yesterday: 22:10
EOF

cat > profile/journal/2026-09-17.md <<'EOF'
---
date: 2026-09-17
status: answered
ritu: Sharad
---
## Answers
- Kantha daha: 1
- Throat clearing: 1
- True hunger at lunch: yes
- Tongue coating: none
- Last meal yesterday: 19:20
EOF

cat > profile/state.json <<'EOF'
{ "intakeDone": true, "intakeDate": "2026-08-20", "lastCheckin": "2026-09-17" }
EOF
