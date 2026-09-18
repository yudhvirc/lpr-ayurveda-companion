---
description: "Research an Ayurvedic topic that the LPR corpus does not yet cover (herb, formulation, food, practice, classical concept, lakshana) using tiered Ayurvedic sources only, validate across two sources, and write it into the corpus with citations. Use when the user asks to research X or add X to the corpus, or when the core skill finds a gap."
argument-hint: "<topic to research>"
---

# Research and grow the corpus

Corpus: `${CLAUDE_PLUGIN_ROOT}/corpus`. Read `CORPUS-RULES.md` and `00-INDEX.md` before anything. Topic: `$ARGUMENTS`.

## 1. Check the gap honestly
Grep the corpus for the topic and its Sanskrit and English synonyms. If it is already covered, answer from it and stop. If partially covered, research only the missing part.

## 2. Search: Ayurvedic sources only, by tier
Use WebSearch and WebFetch. If those tools are not available in this run, stop here and say so plainly in one line: name the gap, name which corpus file would grow, and offer to run the pass in a session that has them. Never invent sources or citations, and never fill the gap from general or non-Ayurvedic knowledge — answer only the neighbouring material the corpus genuinely covers, kept clearly separate from the uncovered topic. Search terms: the Sanskrit name, the Latin botanical name where relevant, plus "Ayurveda", "Amlapitta", "Samhita", "Nighantu", "AYUSH", "CCRAS", "AYU journal", "JAIM".
- T1 classical: wisdomlib.org (translations of Charaka, Sushruta, Ashtanga Hridaya, Madhava Nidana, Kashyapa, Bhavaprakasha, Sharangadhara), niimh.nic.in e-Samhita, carakasamhitaonline.com, Bhaishajya Ratnavali, Yogaratnakara and Chakradatta translations, Nighantus.
- T2 institutional: ayush.gov.in, ccras.nic.in, Ayurvedic Pharmacopoeia and Formulary of India, NAMASTE portal, NIA, AIIA, ITRA Jamnagar.
- T3 Ayurvedic journals: AYU, JAIM, Ancient Science of Life, IJAM, AYUSHDHARA, IJRAP, JAHM, JRAS (via PMC or the journal site). Extract the Ayurvedic reasoning only: nidana, dosha, samprapti, dravya, dose, anupana, pathya, duration, lakshana change. Discard Western endpoints, scales, statistics, and drug comparisons.
- T4 practitioner and lineage: Kottakkal AVS, Kerala Ayurveda, AVP, easyayurveda.com (Dr J V Hebbar), Ayurvedic Institute (Dr Lad), Banyan, Jiva; only if they cite or clearly follow classical teaching.
Never use ENT, gastroenterology, pharmacology, or general health sites, even for background.

## 3. Validate
- Each claim needs two independent sources to be marked `[verified x2]`; otherwise `[single-source]`. Disagreements: `[variant]` with both views. Prefer T1 > T2 > T3 > T4.
- Check the botanical identity when a Sanskrit name has controversies (for example Pashanabheda, Rasna) and note it.
- Doses must come from API, AFI, Sharangadhara, or the cited text, not from product marketing.

## 4. Write into the corpus
- If the topic belongs in an existing file (nidana in 01, chikitsa and dravya in 02, ahara in 03, vihara, yoga and manas in 04, guidelines and cases in 05, practitioner and home practice in 06, pariksha and tracking in 07), append a dated section `## Added YYYY-MM-DD: <topic>` at the end of that file before the sources register, and add the new sources to that file's register.
- Otherwise create `corpus/2x-<slug>.md` (next free number from 20) with the same structure as the others: content sections, glossary, sources register (tier, exact citation, URL, accessed date, authenticity note).
- Update `corpus/00-INDEX.md` (one line per file or major section, with the tags it covers).
- Keep the strict content rule: no Western medicine anywhere in the corpus.

## 5. Report
Tell the user in 3-6 lines what was found, its tiers, any `[variant]` or `[single-source]` caveats, and which file grew. Then answer the original question from the new material.
