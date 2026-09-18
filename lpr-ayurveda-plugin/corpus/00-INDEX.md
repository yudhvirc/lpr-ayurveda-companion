# Corpus index

Ayurveda-only knowledge for LPR, understood as **Amlapitta**, specifically **Urdhvaga Amlapitta** (reflux moving upward) with **kantha** (throat) and **swara** (voice) involvement.

Built 2026-09-17 by seven parallel research agents. Every file validated against primary texts on 2026-09-18 by a second agent, which appended a `## Validation log 2026-09-18` recording what was confirmed, corrected, or left unverified. Read `CORPUS-RULES.md` before adding anything.

**Rule that governs every file:** no Western medicine, anywhere. The only escalation phrase is "discuss with your vaidya". Verbatim journal titles in the sources registers may contain Western disease names so the source stays findable; body text may not.

| File | Lines | Covers |
|---|---|---|
| `CORPUS-RULES.md` | 27 | Content rule, source tiers, tagging, file conventions |
| `01-nidana-samprapti.md` | 664 | What the disease is and how it arises |
| `02-chikitsa-aushadha.md` | 643 | How it is treated: principles, herbs, formulations |
| `03-ahara-pathya-apathya.md` | 664 | What to eat and avoid, and how to eat |
| `04-vihara-dinacharya-yoga-manas.md` | 634 | How to live: routine, urges, voice, yoga, mind |
| `05-institutional-guidelines-and-case-literature.md` | 610 | What Ayurvedic institutions and case literature record |
| `06-practitioner-lineage-and-home-practice.md` | 733 | What vaidyas and lineages actually do, and home practice |
| `07-pariksha-profile-and-tracking.md` | 869 | How to assess and track the patient |

## 01 — Nidana and samprapti (what it is, why it happens)
Definition, etymology and textual history. Nidana: food, lifestyle, mind, season and land. Purvarupa and rupa, with every lakshana mapped to the throat experience. Samprapti with its ghataka table. Prognosis and upadravas. Differential frames the vaidya may weigh. Kantha and swara in Ayurvedic anatomy. Glossary.
*Use for:* why a symptom appears, what dosha picture it suggests, how Amlapitta differs from Grahani, Ajirna, Kasa or Swarabheda.

## 02 — Chikitsa and aushadha (treatment)
Chikitsa sutra and the shodhana-versus-shamana decision. Single herbs with rasa, guna, virya, vipaka and dose. Classical compound formulations. Kantha-specific therapy, the emphasis for this condition. Panchakarma, all vaidya-supervised. Rasayana. Safety in Ayurvedic terms, including the limit on cooling. Glossary, sources.
*Use for:* what a herb or formulation does, its dose, anupana and timing, and who it suits.

## 03 — Ahara, pathya and apathya (diet)
Classical wholesome and unwholesome lists side by side. Rasa, guna, virya and vipaka logic for the plate. The classical eating rules. Quantity, timing, position and after-drinks. Incompatible food combinations. The buttermilk doctrine. Practical menus. Seasonal and climate adjustments. Diet by agni type and for ama days. Glossary, sources.
*Use for:* any food question, meal timing, seasonal change, or a flare traced to something eaten.

## 04 — Vihara, dinacharya, yoga and manas (daily life)
Unwholesome and wholesome conduct. An hour-by-hour daily routine for throat symptoms. The natural urges and their relation to reflux. Voice care. Yoga and pranayama with meal-timing and upward-movement cautions. The mind. Season and place. Habits the tradition flags. A flare-day protocol and a one-page daily card. Glossary, sources.
*Use for:* routine, sleep, rest position, throat clearing, voice strain, yoga choices, stress.

## 05 — Institutional guidance and case literature
Ministry and council guidance on Amlapitta. The national terminology portal and morbidity codes. Pharmacopoeia and formulary entries for the key drugs. A digest of 46 case reports and series, with the throat-symptom ones marked. Patterns across them with counts. Named hospital protocols. Glossary, sources.
*Use for:* speaking the vaidya's vocabulary, and seeing what is typically prescribed, at what dose, for how long.

## 06 — Practitioner lineage and home practice
How named vaidyas and lineages explain reflux rising to the throat. A home-practice compendium with preparation, quantity, timing and who each suits. Throat-specific practice. Formulations vaidyas dispense. Kerala approaches. Weekly and monthly rhythm. Signs of progress and setback. Questions to bring to the vaidya. Glossary, sources, declared gaps.
*Use for:* what to actually do today at home, and how to tell whether it is working.

## 07 — Pariksha, profile and tracking
The constitution questionnaire with its scoring rule. The present-imbalance assessment and the 0-3 grading scale. Agni, koshtha, ama, and sama versus nirama. The rest of the tenfold examination, plus place, season and strength. What the patient can self-observe. The daily tracking schema, 90 fields with allowed values. A bank of 87 rotating questions with an executable rotation rule. Interpretation rules linking patterns to dosha pictures. The one-page vaidya-visit template. Glossary, sources.
*Use for:* intake, the daily check-in, reading trends, preparing a visit. This file drives the skills.

## Reading the tags
`[T1]` classical text, `[T2]` Ayurvedic institution, `[T3]` Ayurvedic journal, `[T4]` practitioner or lineage. `[verified x2]` two independent sources agree. `[single-source]` only one. `[variant]` sources genuinely disagree, both given. `[unverified 2026-09-18]` the claim is retained but could not be confirmed; treat it as weaker than its neighbours. When sources conflict, T1 outranks T2, T2 outranks T3, T3 outranks T4.

## Adding to the corpus
Use the `lpr-research` skill. It appends `## Added YYYY-MM-DD: <topic>` before a file's sources register, or creates `2x-<slug>.md` for a genuinely new subject, and updates this index.
