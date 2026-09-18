# Corpus rules

Scope: Ayurveda only, for LPR understood as Amlapitta / Urdhvaga Amlapitta with kantha (throat) involvement.

## Content rule (set by the owner, absolute)
- No Western / allopathic medicine anywhere: no drug classes, no Western diagnoses or physiology, no endoscopy or scoring scales, no trial statistics, no "evidence is limited" remarks, no "consult a physician" lines.
- Sources that mix frames (typically Ayurvedic journal articles) are mined only for the Ayurvedic reasoning: nidana, dosha, samprapti, dravya, dose, anupana, timing, pathya, duration, and lakshana change.
- Escalation phrase permitted: "discuss with your vaidya". Rasaushadhi, bhasmas, pishtis, panchakarma and strong shodhana are marked vaidya-prescribed.

## Source tiers
| Tier | What | Examples |
|---|---|---|
| T1 | Classical texts | Charaka, Sushruta, Ashtanga Hridaya/Sangraha, Madhava Nidana, Kashyapa Samhita, Bhavaprakasha, Sharangadhara, Yogaratnakara, Bhaishajya Ratnavali, Chakradatta, Nighantus, Rasa texts |
| T2 | Ayurvedic institutions | Ministry of AYUSH, CCRAS, API / AFI, NAMASTE portal, NIA, AIIA, ITRA Jamnagar, Ayurvedic universities |
| T3 | Ayurvedic journals | AYU, JAIM, Ancient Science of Life, IJAM, AYUSHDHARA, IJRAP, JAHM, JRAS |
| T4 | Practitioner and lineage | Kerala tradition, Kottakkal AVS, AVP, Dr J V Hebbar, Ayurvedic Institute, Banyan, Jiva, classical pharmacy monographs |

## Tagging
- Every claim carries a tier tag and citation: `[T1: Madhava Nidana 51/2]`, `[T2: AYUSH STG Amlapitta 2017, p. 3]`, `[T3: AYU 2012;33(2):...]`, `[T4: easyayurveda.com, accessed 2026-09-17]`.
- `[verified x2]` when two independent sources agree; `[single-source]` otherwise; `[variant]` when sources disagree (state both).
- Precedence when sources conflict: T1 > T2 > T3 > T4, unless T1 is silent on a modern formulation.

## File conventions
- `00-INDEX.md` lists every file and its sections with tags. Update it whenever a file changes.
- Each file ends with a Glossary and a Sources register (tier, exact citation, URL, accessed date, authenticity note).
- Additions go under `## Added YYYY-MM-DD: <topic>` before the sources register, or in a new `2x-<slug>.md`.
- Sanskrit terms in simple transliteration with an English gloss on first use.
