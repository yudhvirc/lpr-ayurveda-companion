# 07 — Pariksha: building the patient's Ayurvedic profile and tracking Urdhvaga Amlapitta day by day

Scope: how the companion tool assesses this one patient (intake profile) and follows them daily, in Ayurvedic terms only. The complaint is the throat-and-voice form of Amlapitta — pitta (with kapha and udana/samana vayu involvement) reaching kantha: kantha daha, gala graha, svarabheda, kasa, praseka, throat-clearing. Nothing here uses Western clinical framing; the only escalation phrase is "discuss with your vaidya".

Tag conventions used in every claim:
- Tier: **T1** classical samhita; **T2** institutional (CCRAS, Ministry of AYUSH, NCISM); **T3** Ayurvedic journal; **T4** practitioner material (corroboration/phrasing only).
- Citation shorthand: Ca.Vi.8/98 = Charaka Samhita, Vimana Sthana ch.8, verse 98; Ca.Su., Ca.Sha., Ca.Chi., Ca.Si. = Sutra, Sharira, Chikitsa, Siddhi Sthana; Su.Sha.4 = Sushruta Sharira 4; AH.Su.13/23 = Ashtanga Hridaya Sutra 13 v.23; AH.Sha.3; MN.51 = Madhava Nidana ch.51; KS.Khila.16 = Kashyapa Samhita Khilasthana ch.16; YR = Yogaratnakara.
- Evidence: **[verified x2]** two independent sources agree; **[single-source]** one source only; **[variant]** sources differ and both readings are given; **[constructed]** a tool-specific item built on the pattern of cited sources, not itself found in a source.
- Full citations, URLs and authenticity notes are in section 11.

---

## 1. Prakriti (deha prakriti) — constitution questionnaire

### 1.1 Classical basis
- Charaka: doshas at conception decide constitution; people are by nature shleshmala (kapha), pittala, vatala, samsrishta (two doshas) or samadhatu (all balanced) — Ca.Vi.8/95 [T1]. The lakshanas are derived guna-by-guna: kapha's snigdha/shlakshna/mridu/madhura/sara/sandra/manda/stimita/guru/sheeta/vijjala/accha (Ca.Vi.8/96); pitta's ushna/tikshna/drava/visra/amla/katu (Ca.Vi.8/97); vata's ruksha/laghu/chala/bahu/shighra/sheeta/parusha/vishada (Ca.Vi.8/98); mixed prakriti show mixed signs (8/99); samadhatu shows all good qualities (8/100). [verified x2: carakasamhitaonline raw text; CCRAS SOP manual cites the same verses]
- Ashtanga Hridaya gives a parallel, more detailed list including dreams, tastes liked, voice, gait, temperament and animal likenesses — AH.Sha.3/84-104 [T1, verified x2 with Charaka on shared items].
- Sushruta gives the third list, with animal likenesses (anuka) for each type. **Fetched directly 2026-09-18** from the Bhishagratna English translation of Sushruta Samhita, Sharira Sthana ch.4: prakriti is sevenfold and fixed at conception (4/57-58); vataja (4/59-60); pittaja (4/61-64); kaphaja (4/65-68); dvandvaja and sannipatika (4/69); prakriti never changes (4/70-71) [T1, primary]. **[variant on verse numbers]** Bhishagratna's English numbering 57-71 covers the same matter that Sanskrit editions (and the CCRAS manual) number Su.Sha.4/62-77; CCRAS cites Su.Sha.4/65 for apachita (thin build) where Bhishagratna's thin-build sentence sits at 59-60, so the two numberings run about five verses apart. Cite as "Su.Sha.4 vataja/pittaja/kaphaja section" and give both numbers where precision matters.
- Directly quoted Sushruta traits now used below: vataja - wakeful, fast walker, fissured soles and palms, rough beard/nails/hair, prominent veins (dhamani), lean, talks incoherently, mind never steady, eyes always moving, unsteady in friendship, accumulates little money, dreams of scaling the skies, likeness to goat/jackal/hare/mouse/camel/dog/vulture/crow/ass (Su.Sha.4/59-60). Pittaja - perspires copiously with a fetid smell, copper-coloured nails/eyes/palate/tongue/lips/soles/palms, wrinkles, baldness and grey hair, eats much, averse to warmth, irritable but cools down very soon, middling strength, good retentive memory, monopolises conversation, never overpowered by fear, dreams of meteors/lightning/fire (Su.Sha.4/61-64). Kaphaja - comely, fond of sweet tastes, grateful, self-controlled, forbearing, strong, does not hastily form an opinion, fast (fixed) in enmity, white eyes, curly raven-black hair, prosperous, voice like a rain-cloud / lion / mridanga, dreams of lotus pools with swans, proportionate symmetrical limbs, sustains pain and fatigue, faith in the shastras, unchanging in friendship, gives after long deliberation (Su.Sha.4/65-68) [T1, primary, verbatim].
- Institutional practice: CCRAS Prakriti Assessment Scale (PAS) uses 91 predictors (31 vata, 29 pitta, 32 kapha), one mark each, captured by measurement, observation or Likert questions, with classical reference for every predictor; inter-rater agreement kappa > 0.41 required for retention; Cronbach alpha 0.92/0.91/0.90 for V/P/K — CCRAS SOP Manual 2018/2020 and Bharti et al., AYU 2022 [T2/T3, verified x2]. Ministry of AYUSH "Desh ka Prakriti Parikshan Abhiyan" (launched 29 Oct 2024) assessed 1,40,69,556 adults via an app whose logic came from CSIR-IGIB — PIB release [T2, single-source].
- Validated short form for self-use: Brief Prakriti Inventory (BPI), 21 items, three-option nominal format, test-retest ICC 0.83-0.90 — Bhargav et al., Wellcome Open Research 2025 [T3, single-source].

### 1.2 The questionnaire (40 items). Answer each with the ONE option closest to your lifelong, healthy-state nature (not how you feel during a flare). Each option scores 1 for its dosha.

Physical traits

| # | Question | (V) Vata option | (P) Pitta option | (K) Kapha option | Source |
|---|---|---|---|---|---|
| 1 | Body frame across your adult life | Thin, underdeveloped, light (ruksha-apachita-alpa sharira) | Medium, delicate, soft (sukumara) | Well-built, compact, heavy (upachita, susamhata) | Ca.Vi.8/96-98; AH.Sha.3/87,96; CCRAS SOP 1.1 [verified x2] |
| 2 | Your height compared with your parents and siblings (pramana) | Noticeably shorter or noticeably taller than the rest of the family — an extreme either way (hrasva / ati-dirgha) | About average for the family | Average to tall, and evenly proportioned | Ca.Vi.8/98 (alpa sharira, small body); AH.Sha.3/87 (tall); CCRAS SOP 1.2 HEIGHT (hrasvaakriti, verified 2026-09-18 in the CCRAS preview) [variant — CCRAS scores both extremes as vata] |
| 3 | Skin texture | Dry, rough, cracks easily (ruksha, sphutita) | Soft, warm, many moles/freckles/pimples (vipluvyanga-tila-pidaka) | Unctuous, smooth, thick, cool (snigdha, shlakshna) | Ca.Vi.8/96-98; AH.Sha.3 [verified x2] |
| 4 | Skin colour of your face and arms when you are well (varna) | Dusky, dull (shyava) | Fair-reddish, coppery, flushes | Fair, lustrous, clear (accha varna) | AH.Sha.3/84-98; Ca.Vi.8/96 (kapha clear complexion) [verified x2] |
| 5 | Your hair (scalp and body) | Coarse, dry, sparse, rough to the touch (parusha kesha-shmashru-roma) | Soft, fine, scanty, brownish; early greying or thinning (kshipra vali-palita-khalitya) | Thick, dark, slightly oily, plentiful, often wavy | Ca.Vi.8/97 (kshipra-vali-palita-khalitya; mridu-alpa-kapila-shmashru-loma-kesha), 8/98 (parusha kesha-shmashru-roma-nakha) — verbatim, checked 2026-09-18; Su.Sha.4/61-64 pittaja "wrinkles, baldness and grey hair", 4/65-68 kaphaja "his hair curly and raven black"; AH.Sha.3/85,91,98 [verified x2] |
| 6 | Your eyes (when well) | Small, dry, always moving, dull-looking | Sharp, brown or coppery, redden quickly, dislike bright light | Large, white and clear, moist, easy on the eye | Ca.Vi.8/96 (drishtisukha, prasanna-darshana, kapha), 8/98 (anavasthita akshi, vata) — verbatim, checked 2026-09-18; Su.Sha.4/59-60 vataja "his eyes are always moving", 4/61-64 pittaja "eyes... copper-coloured", 4/65-68 kaphaja "his eyes are white"; AH.Sha.3/86,92,97 [verified x2] |
| 7 | Tendons and veins standing out on your forearms and calves | Clearly visible, standing out (bahu kandara-sira-pratana) | Somewhat visible | Hidden under smooth flesh | Ca.Vi.8/98; CCRAS SOP 1.3 APPEARANCE lists "Bahu kandara-sira-pratana — Prominent tendons and veins (Ref: Charak Samhita Vimana Sthana 8/98)", an exact match checked directly 2026-09-18; AH.Sha.3/96; Su.Sha.4/59-60 vataja "body is marked with a large number of prominent veins (dhamani)" [verified x2] |
| 8 | Joints | Loose, crack when moving (satata sandhi-shabda) | Lax, soft (shithila mridu sandhi) | Firm, well-bound, strong | Ca.Vi.8/96-98 [verified x2 with AH.Sha.3] |
| 9 | Teeth and nails | Irregular, brittle, coarse | Medium, yellowish tinge | Strong, even, white | Ca.Vi.8/98 (vata parusha danta-nakha) [verified x2]; pitta/kapha detail AH.Sha.3 [single-source] |
| 10 | Your natural speaking voice when you are well | Weak, low, it breaks or "sticks", tends to go hoarse (kshama-sanna-sakta-jarjara svara) | Clear, sharp, carries authority | Deep, resonant, pleasant — like a rain-cloud or a drum (megha / mridanga-like) | Ca.Vi.8/98 (pratata-ruksha-kshama-sanna-sakta-jarjara-svara, vata), 8/96 (prasanna-snigdha-varna-svara, kapha) — both verbatim in the critical edition, checked 2026-09-18; Su.Sha.4/65-68 kaphaja "his voice resembles the rumblings of a rain-cloud, the roar of a lion, or the sound of a mridanga"; AH.Sha.3/85,98 [verified x2] — **record this answer as the voice baseline used by the svarabheda grade in 2.3 item 11** |
| 11 | Gait and movement | Quick, light, restless (laghu chapala gati) | Moderate, purposeful | Slow, steady, "elephant-like" | Ca.Vi.8/96,98; AH.Sha.3/99 [verified x2] |
| 12 | How much you sweat, and how it smells (sveda) | Little sweat; the skin usually stays dry (alpa sveda) | Sweats easily and heavily, with a strong smell (prabhuta sveda, puti gandha) | Sweats a moderate amount; the sweat is cool and does not smell strong | Ca.Vi.8/96 (alpa sveda, kapha), 8/97 (prabhuta sveda, puti gandha, pitta); Su.Sha.4/61-64 pittaja "perspires copiously emitting a fetid smell" [verified x2, Sushruta checked directly 2026-09-18] |
| 13 | Body odour | Little | Strong (visra) | Mild/pleasant | Ca.Vi.8/97; AH.Sha.3/91 [verified x2] |

Physiological traits

| # | Question | (V) | (P) | (K) | Source |
|---|---|---|---|---|---|
| 14 | How your hunger behaves (kshudha) | Irregular, unpredictable | Sharp, cannot miss a meal without irritability (tikshnagni, kshudha-bahula) | Low, can skip meals easily (alpa kshut) | Ca.Vi.8/96-97; Ca.Chi.15/50-51; AH.Su.1/8 [verified x2] |
| 15 | How you eat and drink at a meal | Fast, and the amount changes from meal to meal (laghu-chapala ahara) | Large amounts, and often (prabhuta ashana-pana) | Small amounts, eaten slowly, yet you stay strong (manda ahara-vyahara) | Ca.Vi.8/96 (manda cheshta-ahara-vyahara, kapha), 8/97 (prabhuta ashana-pana, pitta), 8/98 (laghu-chapala ahara-vyahara, vata) — all three checked verbatim in the Charaka critical edition 2026-09-18; Su.Sha.4/61-64 pittaja "he eats much" [verified x2]. The earlier pointer "CCRAS SOP 2.x" was a placeholder and is withdrawn [unverified 2026-09-18] |
| 16 | Digestion after a normal meal | Variable — sometimes bloated, sometimes fine (vishama) | Quick; burning/acidity if the meal is late (tikshna) | Slow, heavy, sleepy after eating (manda) | Ca.Chi.15/50-51; AH.Su.1/8 [verified x2] |
| 17 | Thirst (trishna) | Comes and goes unpredictably | Strong and frequent; you drink a lot (tikshna trishna, prabhuta pana) | Low; you often forget to drink (alpa trishna) | Ca.Vi.8/96 (alpa trishna, kapha), 8/97 (kshut-pipasavanta, pitta); CCRAS SOP 2.4 THIRST (PIPASA) uses exactly "Prabhuta pana" and "Teekshna trishna", checked directly 2026-09-18; AH.Sha.3/90,93,101 [verified x2] |
| 18 | Lifelong bowel habit | Hard, dry, irregular, tends to constipation (krura koshtha) | Loose, 2+/day, easily purged (mridu koshtha) | Regular, formed, once daily (madhya koshtha) | Ca.Si.1/5; AH.Su.1/8; Su.Su.35/48 via koshtha review [verified x2] |
| 19 | Urine | Scanty, frequent | Profuse, yellowish (prabhuta mutra) | Moderate, pale/whitish | Ca.Vi.8/97; YR mutra pariksha via IJPRA 2025 [verified x2] |
| 20 | Your sleep when you are well (nidra) | Light, broken, wakeful (jagaruka, alpa nidra) | Moderate, sound but short | Deep, heavy, hard to wake (nidralu) | Ca.Vi.8/96-98; AH.Sha.3/85,102 [verified x2] |
| 21 | What you most often dream about (svapna) | Flying or climbing high, running, mountains, trees, open sky | Fire, lightning, meteors, sun, gold, quarrels | Water, lotus ponds, swans and other birds, clouds | AH.Sha.3/89,95,102; Su.Sha.4/59-60 (vataja "dreams of scaling the skies"), 4/61-64 (pittaja "meteors, lightning-flashes, fire"), 4/65-68 (kaphaja "large lakes or pools decked with lotus flowers, swans") [verified x2, Sushruta checked directly 2026-09-18] |
| 22 | Which weather suits you (ritu-satmya) | Dislikes cold and wind, seeks warmth (sheeta-asahishnu) | Dislikes heat and sun, seeks cool (ushna-asaha) | Tolerates both, dislikes damp cold | Ca.Vi.8/97-98; AH.Sha.3 [verified x2] |
| 23 | The tastes you are naturally drawn to when well (rasa-satmya) | Sweet, sour and salty foods, served warm | Sweet, bitter and astringent foods, served cool | Sweet, creamy, rich and salty foods | AH.Sha.3/88,94,102; Su.Sha.4/65-68 kaphaja "fond of sweet tastes" (checked directly 2026-09-18) [variant — Sushruta and Charaka give kapha a liking for madhura, while some readings of AH.Sha.3/102 list katu-tikta-kashaya for kapha; katu-tikta-kashaya is kapha's *pathya*, not its natural liking, so the kapha option here follows Sushruta] |
| 24 | Stamina through a long day (bala) | Low, tires fast (alpa bala) | Medium (madhya bala) | High, enduring | Ca.Vi.8/96-98 [verified x2] |
| 25 | How you have aged so far (jara) | Early wrinkles from dryness | Early grey/thinning hair (kshipra vali-palita) | Slow ageing | Ca.Vi.8/97-98 [verified x2] |
| 26 | When you fall ill, the illness tends to be (roga-pravritti) | Sudden, shifting, pain/gas type | Heat, burning, inflammatory type | Slow, congestive, heavy type | Ca.Vi.8/96 (kapha disorders slowly progressive), 8/98 (vata quick disorders); BPI item 5 [verified x2] |
| 27 | Reproductive vigour and number of children in the family line (shukra bala) — **optional, may be skipped** | Low (alpa shukra, alpa apatya) | Moderate to low (alpa shukra-vyavaya-apatya) | Strong (prabhuta shukra-vyavaya-apatya) | Ca.Vi.8/96 (prabhuta shukra, kapha), 8/97 (alpa shukra, pitta), 8/98 (alpa apatya, vata) [verified x2] — if skipped, score out of 39 (see 1.3 step 2) |

Psychological and behavioural traits

| # | Question | (V) | (P) | (K) | Source |
|---|---|---|---|---|---|
| 28 | How you take in something new (grahana shakti) | Grasp it at once but forget it soon (shrutagrahi, alpa smriti) | Grasp it sharply and see through it (tikshna buddhi) | Slow to take it in, but then it stays (chiragrahi) | Ca.Vi.8/98 (shrutagrahi, alpa smriti); CCRAS SOP 3.2 COMPREHENSION (Grahya Shakti) cites the same verse for shrutagrahi/chiragrahi — both checked directly 2026-09-18; Su.Sha.4/65-68 kaphaja "does not hastily form any opinion" [verified x2] |
| 29 | Long-term memory (smriti) | Poor retention | Good | Excellent long-term | Ca.Vi.8/98; AH.Sha.3/100 [verified x2] |
| 30 | Making a decision (nishchaya) | You waver and change your mind (anavasthita mati / avyavasthita mati) | You decide quickly and stick to it | You take a long time, then hold to it | Ca.Su.20/11 anavasthitachittatva as a vata vikara (checked directly in the Charaka critical edition 2026-09-18); CCRAS SOP 3.1 INDECISIVENESS (Anavasthita atma / Avyavasthita mati), which cites Su.Sha.4; Su.Sha.4/59-60 vataja "his mind is never steady"; AH.Sha.3/86 [verified x2] |
| 31 | The way you speak (vak) | Talkative, fast, jumps topics (bahu pralapa) | Precise, sharp, argumentative | Few words, measured (alpa vyahara) | Ca.Vi.8/96,98; AH.Sha.3 [verified x2] |
| 32 | First emotional reaction under pressure | Fear, worry, quick attachment/detachment (shighra trasa-raga-viraga) | Anger, irritation (krodha; dandashuka) | Calm, slow to react (stimita) | Ca.Vi.8/96-98 [verified x2 with AH.Sha.3] |
| 33 | Facing something frightening (parakrama) | You startle and hang back (shighra trasa) | You meet it head-on and push hard (tikshna parakrama) | You stay steady; you are slow to be alarmed and slow to be roused | Ca.Vi.8/97 (tikshna parakrama, pitta), 8/98 (shighra trasa, vata); Su.Sha.4/61-64 pittaja "never overpowered with fear... irresistible in battle", 4/65-68 kaphaja "capable of sustaining pain and fatigue"; AH.Sha.3/86,93 [verified x2, Sushruta checked directly 2026-09-18] |
| 34 | Starting and finishing a piece of work (arambha) | Starts fast, abandons fast (shighra samarambha) | Intense, driven | Slow to start, persists to the end | Ca.Vi.8/96,98 [verified x2] |
| 35 | Putting up with discomfort — pain, cold, heat, hunger, a long wait (klesha-sahishnuta) | Poor: cold, pain and waiting upset you quickly, and you say so | Poor: heat, hunger and delay make you sharp and irritable (klesha-asahishnu) | High: you can put up with discomfort for a long time without complaint (klesha-saha) | Ca.Vi.8/97 (klesha-asahishnava, pitta), 8/98 (shita-asahishnava, vata), 8/96 (kapha balavanta, alpa kshut-trishna-santapa); Su.Sha.4/65-68 kaphaja "capable of sustaining pain and fatigue" [verified x2, Sushruta checked directly 2026-09-18] |
| 36 | Your friendships over the years (sauhrida) | Many, but they come and go (anavasthita sauhrida) | Chosen carefully; if crossed, you make an enemy | Few, deep and lasting; and a grudge, once formed, is held long (dridha vaira) | AH.Sha.3/86,99; Su.Sha.4/59-60 vataja "unsteady in his friendship... makes few friends", 4/65-68 kaphaja "unflinching and unchanging in his friendship; fast in his enmity" [verified x2, Sushruta checked directly 2026-09-18]. The earlier pointer "CCRAS SOP 4.5" could not be confirmed — friendship sits under the CCRAS *psychological* trait group, not the behavioural one, and the numbered page is omitted from the public preview [unverified 2026-09-18] |
| 37 | Money: how it comes and how it goes (dhana, tyaga) | Little to spare, and what there is goes quickly (alpa dhana, alpa sadhana) | Comfortable, middling means; you spend on quality | It accumulates, and you give generously but after thinking it over (vasumanta, tyagi) | Ca.Vi.8/96 (vasumanta, kapha), 8/97 (madhya vitta, pitta), 8/98 (alpa dhana, alpa sadhana, vata); Su.Sha.4/59-60 vataja "capable of accumulating very little money", 4/65-68 kaphaja "prosperous... makes large gifts after long deliberation" [verified x2, Sushruta checked directly 2026-09-18] |
| 38 | Your anger (krodha) | Brief, forgotten | Intense, explosive | Rare, held silently | Ca.Vi.8/97; AH.Sha.3/99 [verified x2] |
| 39 | Faith, and how you carry yourself with teachers and elders (shraddha, vinaya) | Beliefs shift; you take things up and drop them | Proud, self-assured, not easily deferential | Faithful and respectful; you keep to what you were taught (vineeta, astika) | AH.Sha.3/99, cited for vineeta (polite/humble) by CCRAS SOP 4.6 — both checked directly 2026-09-18; Su.Sha.4/65-68 kaphaja "possesses faith in the shastras... always obedient to his preceptors"; AH.Sha.3/86 [verified x2] |
| 40 | The weather and hour of day you feel worst in, even when otherwise well (ritu, kala) | Windy, cold-dry weather; late afternoon; rainy season | Hot noon, autumn (sharad), midnight | Damp cold mornings, spring | AH.Su.12 (chaya-prakopa by ritu); AH.Su.1/8 (day/night/age thirds); Ca.Su.6/41 [verified x2] |

### 1.3 Scoring and naming the prakriti

Run these steps in order. They are deterministic: the same answer sheet must always give the same label.

1. **Score.** Each answered item contributes exactly **one** mark, to V, P or K, according to which column the chosen option sits in. No item may score two doshas; no item scores zero if it was answered. Let `V`, `P`, `K` be the three totals.
2. **Count the denominator.** `N = V + P + K` = the number of items actually answered. Item 27 is optional, so `N` is normally 40, or 39 if item 27 was skipped. If `N < 35`, do not produce a label: ask for the missing items first.
3. **Percentages.** `Vpct = 100 x V / N`, and likewise for P and K. Round to one decimal place. Record `V`, `P`, `K` **and** the three percentages; never store the label alone.
4. **Test ekadoshaja first.** If `V > P + K`, the prakriti is **Vataja (ekadoshaja)**. If `P > V + K`, **Pittaja**. If `K > V + P`, **Kaphaja**. At most one of these can be true. If one fires, stop here.
5. **Test sama next.** If **all three** percentages lie in the closed range 28.0-38.0 inclusive, the prakriti is **sama (samadhatu)**. If it fires, stop here.
6. **Otherwise dwandvaja.** Rank the three raw totals from highest to lowest. The label is the top two, highest first, joined by a hyphen: e.g. `P=19, K=12, V=9` gives **Pitta-Kapha**.
7. **Tie-breaks**, applied only when step 6 leaves the order undecided:
   a. Two doshas tie for **first** place: name them in the fixed order **Vata, Pitta, Kapha** (so a V/P tie is written Vata-Pitta). Add the flag `[tie-at-1]`.
   b. Two doshas tie for **second** place: nothing decides between them, so record both readings, e.g. `Pitta-Kapha / Pitta-Vata`, with the flag `[tie-at-2]`, and let the vaidya settle it.
   c. All three tie exactly: record **sama (samadhatu)** with the flag `[three-way-tie]`.
8. **Never re-label from a flare.** Prakriti is fixed from conception (Su.Sha.4/70-71: "the temperament of a man is never altered" — read directly 2026-09-18 [T1]). If a re-run gives a different label, that is an answering error, not a change of prakriti: re-ask with the "lifelong, when well" instruction and keep the intake set as the reference.

Provenance of the rules: the ekadoshaja / sama / dwandvaja thresholds in steps 4-5 are the **Brief Prakriti Inventory** rule [T3, single-source: Bhargav 2025]; the tie-breaks in step 7 are **[constructed]** for this tool, because no published scale states them. CCRAS PAS uses one mark per predictor and relative dominance; exact PAS cut-offs are in the training-restricted manual and were not obtainable [T2, single-source]. Prakriti200/IGIB app: "dominant dosha = highest score; mixed types allowed" [T3, single-source].
3. Classical framing: the seven deha-prakriti types (three ekadoshaja, three dwandvaja, one sannipataja/sama) — Ca.Vi.8/95-100; AH.Su.1/9-10 ranks vatala lowest, pittala middle, shleshmala best, sama best of all [verified x2].
4. Amlapitta context: in a 138-patient Urdhvaga Amlapitta series 53.6 % were Pitta-Kapha prakriti, 68.8 % rajasika — Baragi & Vyas, AYU 2013 [T3, single-source]. Do not let a flare answer prakriti questions: prakriti items ask about lifelong tendency; vikriti (section 2) tracks the present.

### 1.3a Worked scoring examples

**Example A — all 40 items answered.** V 9, P 19, K 12.
- Step 2: N = 9 + 19 + 12 = 40. OK (not below 35).
- Step 3: Vpct = 100 x 9 / 40 = 22.5; Ppct = 100 x 19 / 40 = 47.5; Kpct = 100 x 12 / 40 = 30.0. The three sum to 100.0.
- Step 4: is P > V + K? 19 > 9 + 12 = 21? No. Is V > 31? No. Is K > 28? No. Not ekadoshaja.
- Step 5: are all three percentages in 28.0-38.0? 22.5 is below 28.0 and 47.5 is above 38.0. Not sama.
- Step 6: rank P 19 > K 12 > V 9. Label **dwandvaja Pitta-Kapha**.
- Record `V 9 (22.5 %) / P 19 (47.5 %) / K 12 (30.0 %) — Pitta-Kapha`. Keeping the raw numbers shows the vaidya that P is only two marks short of Pittala.

**Example B — item 27 skipped.** V 11, P 14, K 14.
- Step 2: N = 39. Step 3: 28.2 / 35.9 / 35.9 (100.0).
- Step 4: no dosha exceeds the sum of the other two (14 is not greater than 25). Step 5: all three lie in 28.0-38.0, so the rule fires: **sama (samadhatu)**. Stop — do not go on to name a dwandvaja.

**Example C — a tie.** V 13, P 13, K 14, N = 40 (32.5 / 32.5 / 35.0).
- Step 5 fires before any tie has to be broken: all three are within 28.0-38.0, so this is **sama**. This is why step 5 runs before step 6.
- Had the numbers been V 16, P 16, K 8 (40.0 / 40.0 / 20.0): step 4 no; step 5 no (20.0 is below 28.0); step 6 gives a first-place tie, so step 7a applies — **Vata-Pitta [tie-at-1]**.

**A re-run that changes the label.** If a second run a year later gives V 14 / P 17 / K 9 (35.0 / 42.5 / 22.5 — not ekadoshaja, not sama, so **Pitta-Vata**), the label has shifted. Prakriti does not change (step 8), so the difference is answering-under-vikriti — re-ask with the "lifelong, when well" instruction and keep the intake set as the reference.

### 1.3b What each dwandvaja prakriti implies for an Amlapitta patient
| Prakriti | Natural agni / koshtha (AH.Su.1/8; Kuttikrishnan 2022 associations) | Typical Amlapitta colour | Pathya emphasis from the classics | Source |
|---|---|---|---|---|
| Pitta-Kapha (commonest in Urdhvaga Amlapitta, 53.6 %) | tikshna agni with kapha slowing; koshtha madhya→mridu; JAIM 2022: kapha-pitta groups often vishamagni | urdhvaga with praseka and burning together; sharad and vasanta both bad | tikta rasa (dries pitta's drava and cuts kapha — Kashyapa's tikta principle), laghu food, no dairy at night, no day sleep, cooling but not heavy | Baragi 2013; KS.Khila.16 via IJAM 2016; Ca.Su.6/42 [verified x2] |
| Pitta-Vata | tikshna agni prone to burn dhatus when meals are late (Ca.Chi.15/50); JAIM 2022: vata-pitta → tikshnagni 78 % | burning + dryness, hoarseness, anidra, shula; night flares | regular meal hours, madhura-tikta-sheeta, ghrita anupana as vaidya directs, snigdha not ruksha, avoid fasting beyond hunger | Ca.Chi.15/50; AH.Sha.3; Kuttikrishnan 2022 [verified x2] |
| Vata-Kapha | manda or vishama agni (JAIM 2022: vata-kapha → mandagni 66 %); krura or madhya koshtha | ama-heavy: gaurava, praseka, gala graha, cold intolerance, little burning | deepana-pachana, ushna jala, laghu-ushna food, tikta-katu shaka, vyayama to ardha-shakti; mild anulomana rather than cooling drinks | Kuttikrishnan 2022; AH.Su.13/28-29 [verified x2] |
| Ekadoshaja Pittala | tikshna; mridu koshtha; easily purged | classic pittadhika: daha, amlodgara, trishna, krodha | as row 2 but mridu virechana suffices; avoid strong purgatives | AH.Su.1/8-9; Ca.Si.1 [verified x2] |
| Ekadoshaja Shleshmala | manda; madhya koshtha | kaphadhika: aruchi, gaurava, lepa, kandu, nishthivana | vamana-oriented tradition (Kashyapa first line), ruksha-ushna upachara | KS.Khila.16/18-23 [T1 via T3] |
| Ekadoshaja Vatala | vishama; krura koshtha | vatadhika: shula, kampa, bhrama, shosha, variable voice | snigdha upachara, timely food, no vega dharana; strong purgation needs koshtha care | MN.51/8; KS.Khila.16/18 [single-source each] |

### 1.4 Manasa prakriti (sattva / rajas / tamas) — brief
- The mind is sattvika (pure, without abnormality), rajasika (agitation, anger) or tamasika (delusion, inertia); the body influences the mind and vice-versa — Ca.Sha.4/36 [T1]. Sixteen sub-types: seven sattvika (Brahma, Arsha, Aindra, Yamya, Varuna, Kaubera, Gandharva), six rajasa (Asura, Rakshasa, Paishacha, Sarpa, Praita, Shakuna), three tamasa (Pashava, Matsya, Vanaspatya) — Ca.Sha.4/37-40 [verified x2: carakasamhitaonline raw text; Sattva concept page].
- Three quick intake questions (score S/R/T):
  - When wronged, I usually: forgive and stay even (S) / get angry and act (R) / withdraw and go numb (T).
  - My mind at rest is: clear and content (S) / restless, planning, craving (R) / heavy, dull, sleepy (T).
  - Food and I: eat mindfully, moderate (S) / crave stimulating, spicy, fast eating (R) / overeat, sleep after (T) — patterns drawn from the Rakshasa ("fond of overeating"), Shakuna ("excessively indulged in food"), Pashava/Vanaspatya ("indulgence in food, sleep") descriptions, Ca.Sha.4/38-39 [T1, single-source per sub-type].
- Why it matters for Amlapitta: manasika nidana (krodha, chinta, bhaya, shoka, lobha) are listed causes — Ghosh & Baghel AYU 2017; Baragi 2013 (tension 48.6 %, depression 25.4 %) [T3, verified x2]. Rajasika predominance predicts a krodha-driven pitta pattern; tamasika predicts kapha-ama pattern with diwasvapna.
- Sattva bala (mental strength, pravara/madhyama/avara) is a separate Dashavidha item — section 4.

---

## 2. Vikriti — the present imbalance, specific to Amlapitta

### 2.1 Dosha vriddhi lakshanas (screen for which dosha is raised now)

| Dosha raised | Classical vriddhi signs | Amlapitta-throat expression to watch | Source |
|---|---|---|---|
| **Pitta** | Yellow tint of stool/urine/eyes/skin, excessive hunger, intense thirst, burning (daha), reduced sleep — AH.Su.11/7. The forty pitta nanatmaja vikara include daha, vidaha, antardaha, atisveda, tiktasyata (bitter mouth), amlaka (sour taste / hyperacidity), trishnadhikya, atripti, asyavipaka, **galapaka** (throat inflammation) and harita-haridra-netra-mutra-varchastva (green-yellow eyes, urine and stool) — Ca.Su.20/14 | kantha daha, hrit daha, amla/tikta udgara, burning tongue, bitter-sour taste on waking, thirst, irritability (krodha), pitta-varna (yellow) mala | [verified x2: AH.Su.11, plus **Ca.Su.20/14 read verbatim in the carakasamhitaonline critical edition on 2026-09-18**; Ca.Su.18/52-53 gives the general rule "increase of own functions"]. **Corrected 2026-09-18**: the term in Ca.Su.20/14 is *galapaka*, not "kantha-paka" |
| **Kapha** | Weak digestion (agnimandya), excess salivation (praseka), lassitude, heaviness (gaurava), whiteness, coldness, looseness, dyspnoea, cough (kasa), excess sleep (tandra, nidradhikya) — AH.Su.11/7-8. Nanatmaja: trupti, tandra, nidradhikya, guru-gatrata, alasya, apakti, mukha-srava (praseka), kanthopalepa (throat coating), shleshmodgirana, shvetavabhasata, sheetagnita — Ca.Su.20/17 | praseka, nishthivana (spitting), gala/kantha kandu (itch), throat coating and repeated clearing, morning heaviness, aruchi, thick white jihva lepa [verified x2: the AH.Su.11 list, and **the whole twenty-item Ca.Su.20/17 list read verbatim in the carakasamhitaonline critical edition on 2026-09-18** — trupti, tandra, nidradhikya, staimitya, gurugatrata, alasya, mukhamadhurya, **mukhasrava**, **shleshmodgirana**, malasyadhikya, balasaka, apakti, hridayopalepa, **kanthopalepa**, dhamanipraticaya, galaganda, atisthaulya, **shitagnita**, udarda, shvetavabhasata, shvetamutranetravarchastva. The four items previously marked single-source are now confirmed] |
| **Vata** | Emaciation, dusky colour, desire for warmth, tremors, bloating (adhmana), constipation (vibandha), loss of strength, insomnia (anidra), sensory dulling, irrelevant speech, giddiness, timidity — AH.Su.11/5-6. The eighty vata nanatmaja vikara include **kanthoddhvamsa** (glossed "hoarseness of voice" in the carakasamhitaonline edition), vaksanga, mukatva, mukhashosha, kashayasyata, hikka, jrimbha, asvapna, bhrama, vepathu, atipralapa, raukshya, parushya and **anavasthitachittatva** — Ca.Su.20/11; the vata *karma* of Ca.Su.20/12 add sanga, graha, stambha, shosha and shula (kasa itself is listed under kapha vriddhi, AH.Su.11/8, but a dry tickly kasa reads as vata) | kantha shosha (dry throat), gala graha (tightness/lump), svarabheda that varies through the day, dry cough, udara shula, adhmana, vibandha, anidra, anxiety | [verified x2: the AH.Su.11 list, and **Ca.Su.20/11-12 read verbatim in the carakasamhitaonline critical edition on 2026-09-18**. **Corrected 2026-09-18**: *svarabheda* does **not** appear among the eighty vata nanatmaja vikara of Ca.Su.20/11 — the term actually in the list is *kanthoddhvamsa*, which that edition glosses as "hoarseness of voice". Earlier drafts listed both as though both stood in the verse. Cite kanthoddhvamsa for the Charaka anchor, and svarabheda only where a text actually uses that word. Likewise bare *shula* is not in 20/11 (only padashula, akshishula and karnashula are); shula belongs to the vata karma of 20/12] |

Rule from Charaka: decrease of a dosha shows as loss of its natural functions or gain of the opposite dosha's functions; increase shows as excess of its own functions — Ca.Su.18/52-53 [T1, verified x2]. So a pitta score uses heat/sourness/sharpness; kapha uses heaviness/wetness/slowness; vata uses dryness/pain/irregularity.

### 2.2 Amlapitta itself — classical lakshanas and dosha-predominance
- General lakshanas (any Amlapitta): avipaka, klama (tiredness without exertion), utklesha (nausea), tikta-amla udgara, gaurava, hrit-kantha daha, aruchi — MN.51/2 [T1, verified x2: easyayurveda MN.51 page; Ghosh & Baghel cardinal list].
- **Urdhvaga** (upward) Amlapitta: vomiting/regurgitation of sour, sticky, green/yellow/blackish material followed by kapha, of varied taste; burning of throat, chest and upper abdomen; headache; aruchi; skin eruptions — MN.51/5-7 [T1, single-source for full list; "burning in throat, chest" verified x2]. Kashyapa: kantha-urasi vidaha (throat/chest burning), amlotklesha, hrit-shula, adhmana, antrakujana, angasada, romaharsha, shiroruja, gurukoshthata — KS.Khila.16/14-17 via Kuriakose et al. IJAM 2016 [T1 via T3, single-source].
- Dosha-predominant pictures (MN.51/8-12; Ghosh & Baghel 2017 criteria) [verified x2]:
  - **Kaphadhika**: aruchi, gaurava, jadyata (dullness), kapha-nishthivana (spitting phlegm), lepa (coating), sada, sheeta (feels cold), vami, kandu (itch — throat/skin).
  - **Pittadhika**: nanavidha pravritti (varied discharges), trishna, hrit-kantha-kukshi daha, murchha, bhrama, moha, anala-sada, hrillasa, sveda, anga-peetata.
  - **Vatadhika**: kampa, pralapa, murchha, chimichima (tingling), gatra-sada, shula, tamodarshana, bhrama, moha, harsha — MN.51/8 [T1, single-source (not re-fetched; listed in IJNRD/IRJAY reviews cached locally)].
  - Kashyapa's three-fold remedy logic: vata-signs (shula, angasada, jrimbha) → snigdha upachara; pitta-signs (bhrama, vidaha) → svadu-sheeta upachara; kapha-signs (gurutva, chhardi) → ruksha-ushna upachara — KS.Khila.16/18-21 [T1 via T3, single-source].
- Nidana list to reuse in the log (section 6): viruddha, adhyashana, ajirna-bhojana, ama, pishtanna (flour foods), apakva madhya, apakva kshira, guru bhojana, abhishyandi (curd, etc.), vega dharana, ati-ushna, ati-snigdha, ati-ruksha, ati-amla, ati-drava, phanita, kulattha, bhrishta dhanya, day-sleep after eating, bathing after meals, ati-svedana, drinking water mid-meal, paryushita (stale) food — KS.Khila.16/3-6 [T1 via T3, single-source]; plus katu-lavana-vidahi diet, bhuktamatrasya svapna, vegavidharana, prajagarana, lack of exercise, krodha/avasada/chinta/lobha — Ghosh & Baghel 2017 [T3]; frequencies in Baragi 2013 (katu 99.3 %, amla 95.7 %, guru 90.6 %, snigdha 86.2 %, viruddha 81.9 %, abhishyandi 81.9 %, diwasvapna 89.9 %, tea/coffee 98 %, antarodaka-pana 81.9 %, vegavidharana 23.2 %) [T3, single-source].

### 2.2a Nidana → dosha map (for tagging each logged apathya)
Kashyapa's own table of causes and the dosha each provokes — KS.Khila.16/3-6 as tabulated by Kuriakose et al. 2016 [T1 via T3, single-source unless noted]:

| Nidana | Dosha/agni effect | Log tag |
|---|---|---|
| Viruddha ahara (incompatible combinations, e.g. milk with sour/salty, fish with milk, honey heated) | tridosha prakopa | NA-viruddha [verified x2 with Ghosh & Baghel] |
| Adhyashana (eating before the last meal is digested) | agnimandya, kapha | NA-adhyashana [verified x2 with Ca.Chi.15/235] |
| Ajirna-bhojana (eating during indigestion) | agnimandya | NA-ajirna |
| Ama (already present) | agnimandya | AM |
| Pishtanna (flour-based foods: breads, pastries, noodles) | kapha-pitta | NA-pishtanna |
| Apakva madhya (immature/fermented drinks) | pitta-kapha | NA-fermented |
| Apakva kshira (raw/unboiled milk) | kapha | NA-dairy |
| Guru bhojana (heavy food) | kapha | NA-guru [verified x2 with Baragi 2013 90.6 %] |
| Abhishyandi (curd, channel-clogging foods) | kapha, slight pitta | NA-abhishyandi [verified x2 with Baragi 2013 81.9 %] |
| Vega dharana | vata | NV-vega [verified x2 with Ghosh & Baghel] |
| Ati-ushna (very hot food/drink) | pitta | NA-ushna |
| Ati-snigdha (very oily) | kapha | NA-snigdha |
| Ati-ruksha (very dry) | vata | NA-ruksha |
| Ati-amla (sour) | pitta-kapha | NA-amla [verified x2 with Baragi 2013 95.7 %] |
| Ati-drava (too much liquid) | pitta | NA-drava |
| Phanita (thick cane syrup) | pitta | NA-phanita |
| Kulattha (horse gram) | pitta | NA-kulattha [verified x2: Ca.Su.25 agrya lists kulattha as Amlapitta cause per IJAM 2016] |
| Bhrishta dhanya (fried/roasted grain) | vata | NA-fried |
| Day sleep after eating | kapha, agnimandya | NV-diwasvapna [verified x2 with Baragi 2013 89.9 %] |
| Bathing right after a meal | kapha-pitta | NV-snana |
| Ati-svedana (excess sweating/heat exposure) | pitta | NV-sveda |
| Water taken mid-meal in quantity | agnimandya | NA-antarodaka [verified x2 with Baragi 2013 81.9 %] |
| Paryushita (stale, reheated, leftover) food | tridosha | NA-stale |
| Katu-lavana dominant diet, vidahi food | pitta | NA-katu, NA-lavana, NA-vidahi (Ghosh & Baghel; Baragi katu 99.3 %, lavana 53.6 %) [T3] |
| Prajagarana (late nights) | vata (then pitta) | NV-prajagarana (Ghosh & Baghel) [T3] |
| Krodha, chinta, shoka, bhaya, lobha, avasada | pitta (krodha), vata (chinta, bhaya, shoka), kapha (avasada) | NM-* (Ghosh & Baghel; Ca.Sha.4 sattva types) [T3/T1] |
| Tea/coffee (ushna-tikshna), tobacco (ushna-tikshna-vyavayi) | pitta | NA-tea, NA-tobacco (Baragi 2013: tea/coffee 98 %) [T3] |

### 2.2b Udana and samana vayu in the throat form
- Udana vayu is seated in the chest and moves through nose, umbilicus and throat; it governs speech, effort, enthusiasm, strength, complexion and memory. Samana vayu sits beside the agni in the alimentary tract and governs receiving, digesting, separating and expelling food — AH.Su.12/4-8 [T1, verified x2 with Ca.Su.12/8 five-fold vata]. Prana vayu (head; moves in chest and throat) governs swallowing and spitting [same].
- Reading: sour-pitta rising against udana's path gives svarabheda and kantha daha; samana disturbed (vishamagni) gives the irregular hunger and udgara; kapha lodged in kantha (kanthopalepa, Ca.Su.20/17) obstructs udana and gives the heavy, wet voice and repeated clearing. The log's voice and clearing fields therefore report udana, not only pitta.

### 2.3 Amlapitta lakshana grading scale (0-3) for monthly re-scoring
Scales below are the ones actually used in Ayurvedic clinical studies; where two studies grade the same lakshana differently both are shown. Items 9-14 (throat-specific) have no published Amlapitta grading and are **[constructed]** on the same 0-3 pattern — mark them as such when discussing with your vaidya.

**Scale convention — binding for every 0-3 score in this file, including sections 6, 8 and 9:**
- **0 = the lakshana is absent today.** Never "mild": if anything at all was felt, the score is at least 1.
- **1 = present but slight** — occasional, short-lived, needs no change to the day.
- **2 = present and daily or prolonged** — clearly noticeable, but the day's ordinary work still gets done.
- **3 = severe** — continuous, or it stops ordinary work, or it wakes the patient from sleep.
- Every scored item is worded so that **more of the symptom means a higher number**. No field in this file is scored the other way round. That is why the daily manas block in 6.1 records *avyagrata* (loss of focus) rather than ekagrata (focus): focus is a good thing, and scoring it 0-3 would invert the scale.
- Some published Amlapitta studies extend certain items to a grade **4**. This tool uses **0-3 only**; where a source gives a grade 4, fold it into 3 and note the source grade in the free-text line. The 0-4 ASRS quoted at the end of this section is an alternative instrument, not something to be mixed into the 14-item scale.

| # | Lakshana | 0 | 1 | 2 | 3 | Source |
|---|---|---|---|---|---|---|
| 1 | Amlodgara / tiktodgara (sour/bitter belching) | None | Occasional, day or night, < 30 min after meals | Daily 2-3 times, 30-60 min | After every meal or any food, ≥ 30-60 min, relieved only by digestion/vomiting; a source grade of 4 (> 1 h, unrelieved) is folded into 3 | IJHM 2025 case (scale of Jamnagar tradition) [T3]; [variant] Khapre JAIM 2021: 1 = 1-5/day only after sour-spicy food, 2 = 6-10/day, 3 = > 10/day with any food; [variant] Sharma AYUSHDHARA 2025 & Akanksha JAIMS 2024 grade by sound: 1 = belching without sound, 2 = mild sound, 3 = loud [verified x2 that 0-3 grading is standard] |
| 2 | Hrit-kantha daha (burning chest/throat) | None | Warmth in throat occasionally; or daha in one area (ura/udara/kukshi/kantha) occasionally > 30 min | Burning in throat and chest after mild oily/spicy food; or two areas daily 30-60 min | Burning always regardless of diet; or > 2 areas daily ≥ 1 h, relieved only by digestion/vomiting, or it wakes the patient (a source grade of 4, sleep lost, is folded into 3) | Sharma 2025; Akanksha 2024; IJHM 2025; Patoladi IJAM 2023 [verified x2] |
| 3 | Utklesha / chhardi (nausea/vomiting) | None | Mild nausea; or 2-3 times a week | Severe nausea daily but tolerable | Severe nausea with vomiting; or subsides only after langhana | Sharma 2025; Akanksha 2024; IJHM 2025 [verified x2] |
| 4 | Avipaka / ajirna | None | Cannot digest mildly fatty food; or delay only after heavy food | Cannot digest full three-course meal; delayed digestion of light food | Cannot digest any food; seldom hungry | Sharma 2025; Akanksha 2024; Khapre 2021 [verified x2] |
| 5 | Gaurava (heaviness) | None | Morning heaviness only; or occasional in limbs | Morning and evening after food; or continuous but daily work possible | Always; hampers routine work (akarmanyata) | Sharma 2025; Akanksha 2024; Khapre 2021; IJHM 2025 [verified x2] |
| 6 | Aruchi (no relish) | Relish for all food — aruchi absent | Dislikes some specific foods; or eats only lunch and dinner | Dislikes specific rasas (katu, amla, madhura); or loses interest in one main meal | No desire for food; avoids meals | Sharma 2025; Akanksha 2024; IJHM 2025; Khapre 2021 [verified x2] |
| 7 | Udara shula (abdominal pain) | None | Mild | Moderate | Severe | Hussain & Kumar IJRAP 2020; Baragi AYU 2012 (mild/moderate/severe = 1/2/3) [verified x2] |
| 8 | Klama (tiredness without exertion) | None | Occasional, short | Daily for some time, or long | Always tired, no enthusiasm | IJHM 2025 [T3, single-source]; klama is a cardinal sign MN.51/2 |
| 9 | Kantha daha (throat burning alone) | None | Warmth in throat occasionally (< 30 min) | Daily burning after meals or on waking, 30-60 min | Burning most of the day or wakes patient | [constructed] on the pattern of item 2 (Sharma 2025 "sensation of warmth on throat occasionally" is grade 1) |
| 10 | Gala graha (a lump or tightness in the throat) | None | Occasional sense of something in throat, clears with swallowing/meal | Daily, persistent for hours, swallowing effort | Constant, disturbs speaking/eating | [constructed]; graha/stambha is a vata quality (Ca.Su.20 vata signs stambha, graha) and kanthopalepa a kapha sign (Ca.Su.20/17) |
| 11 | Svarabheda (hoarseness) | Voice exactly as at the baseline recorded in prakriti item 10 (section 1.2) | Slight roughness on waking, clears within an hour | Hoarse for part of the day, tires with talking | Hoarse all day or voice loss | [constructed]; svarabheda is vata nanatmaja (Ca.Su.20/11); voice pariksha YR (kapha heavy, pitta cracked, vata rough/hoarse) via IJPRA 2025 [T3] |
| 12 | Kasa (cough) | None | Occasional dry clearing-cough | Daily bouts, especially after meals/lying down | Continuous, disturbs sleep | [constructed]; kasa listed under kapha vriddhi AH.Su.11/8 |
| 13 | Praseka / nishthivana (salivation, spitting) | None | Slight watery mouth after meals | Repeated need to spit/swallow phlegm through the day | Constant salivation, spitting, phlegm-laden | [constructed]; praseka = kapha vriddhi AH.Su.11/7; kaphanishthivana = kaphadhika Amlapitta (Ghosh & Baghel) |
| 14 | Gala kandu (throat itch) and throat-clearing | None | Itch/clearing a few times a day | Hourly clearing, itch after meals | Continuous itch, clearing every few minutes | [constructed]; kandu = kaphadhika Amlapitta sign (Ghosh & Baghel); clearing-count bands: 0 = 0-2/day, 1 = 3-10, 2 = 11-30, 3 = > 30 |

Alternative published composite: Amlapitta Symptom Rating Scale (ASRS) — 20 items, 0-4 Likert, four domains: Rogabala (hrit-kantha daha, tiktamlodgara, vami, gaurava, utklesha, shula, bhrama), Agnibala (abhyavaharana shakti, jarana shakti, avipaka, aruchi, vata-mutra-retasam mukti), Dehabala (bala-vriddhi, klama, svara-varna yoga, sharira upachaya), Chetasabala (nidra labha yathakalam, sukhena pratibodhanam, vaikarika svapna, mano-buddhi-indriya avyapatti) — Ghosh & Baghel AYU 2017 [T3, single-source; a 7-item 0-3 variant in Shetty et al. JAIM 2022]. Note the Dehabala item "svara-varna yoga" (voice and complexion) — the tradition already tracks voice as a marker of recovery.

---

## 3. Agni, koshtha, ama, sama-nirama pitta

### 3.1 Agni (jatharagni) — four states
- Vishama (vata), tikshna (pitta), manda (kapha), sama (balanced) — AH.Su.1/8; Ca.Chi.15/50-51 ("vishamagni digests irregularly and forms dhatus irregularly; tikshnagni with little fuel depletes dhatus; mandagni leaves food incompletely digested; samagni keeps dhatus in equilibrium when diet follows rules"); Ca.Vi.6/12 is the earlier listing — [verified x2].
- Signs food is digested and it is time to eat again (jirna-ahara lakshana): clean belching (udgara shuddhi), enthusiasm, timely urges (vata, mutra, purisha), lightness, hunger, thirst — AH.Su.8/55 [T1, verified x2 with Sushruta Sutra 46 as summarised on carakasamhitaonline Agni page].
- Ajirna types (what the flare looks like): **ama-ajirna** (kapha; swelling, salivation), **vidagdha-ajirna** (pitta; sour belching, burning, thirst, sweat), **vishtabdha-ajirna** (vata; bloating, constipation, pain), **rasashesha** (heaviness despite clean belching) — AH.Su.8/23-31 [T1, single-source]. Urdhvaga Amlapitta usually shows the vidagdha picture over an ama base.
- Agni self-assessment (each question answered by the pattern that fits MOST days this fortnight; VI = vishama, TI = tikshna, MA = manda, SA = sama). Structure follows the four-subscale design of the Jatharagni Assessment Questionnaire (Kuttikrishnan et al., JAIM 2022; subscales vishama 11, tikshna 14, manda 13, sama 13 items; abhyavaharana/jarana shakti 5+6 items) and Singh et al. 2017 self-assessment tool (domains: hunger, digestion time, feeling after meals, stool) [T3, verified x2 that such tools exist; item wording here is [constructed]].

| # | Question | VI | TI | MA | SA |
|---|---|---|---|---|---|
| A1 | Hunger at the usual meal hour | Sometimes yes, sometimes no | Sharp, even before the hour, irritable if late | Rarely truly hungry | Clearly hungry at the hour |
| A2 | Time until you feel light after a normal meal | Varies day to day | Quick (2-3 h), then hungry again | Long (5-6 h+), heaviness lingers | 4-5 h, no heaviness |
| A3 | After eating you feel | Bloated or gassy on some days | Warm, thirsty, burning if meal was spicy/late | Heavy, sleepy | Content, light |
| A4 | Belching after meals | Irregular, sometimes gassy | Sour, hot | Sweet-sticky, mucoid | Clean, odourless |
| A5 | Stool | Alternates hard/loose; gas | Loose, urgent, hot, yellowish | Sticky, heavy, mucous, sinks | Formed, once daily, floats |
| A6 | If a meal is delayed | Unpredictable | Burning, headache, anger | No trouble | Mild hunger only |
| A7 | Tongue on waking | Thin patchy coat, dry | Red, thin yellow coat, burning | Thick white/grey coat | Pink, clean |
| A8 | Appetite for large vs light meals | Cannot predict what will suit | Can eat much, tolerates irregularity | Small meals only, even those sit heavy | Moderate, consistent |
| A9 | Tea/coffee/spice effect | Sometimes helps, sometimes hurts | Provokes burning/sour belch | Feels needed to "wake digestion" | Neutral |

Scoring: column with most answers = present agni state; if VI and MA tie, treat as vishama with ama (vata-kapha). Tikshnagni + ama-signs = the classic Urdhvaga Amlapitta terrain (pitta drava-ushna over kapha ama, KS.Khila.16/7-13 samprapti [T1 via T3]).

### 3.2 Koshtha (bowel nature) and why it changes the virechana choice
- Three koshthas: krura (hard; vata-bahula), mridu (soft; pitta-bahula), madhya (moderate; kapha-predominant or sama-dosha) — Ca.Si.1/5; Su.Su.35/48-49; AH.Su.1/8 [verified x2: carakasamhitaonline Kalpana Siddhi + Priyadarshini/RKM koshtha review citing Sushruta]. Chakrapani-style reading: mridu = pitta strong, kapha less, vata weak; madhya = kapha-pradhana or samavastha [T3, single-source].
- Practical criteria (Patil et al. as summarised in the RKM review) [T3, single-source]:
  - **Krura**: irregular stools, hard/dry, straining, long time, unsatisfied, rarely loose; needs strong purgatives; no change after a test dose of sneha.
  - **Mridu**: 1-2 formed/semiformed stools daily, easy, quick, lightness after; hot milk, tea, minor laxatives loosen stools; test-dose sneha loosens.
  - **Madhya**: once daily, formed, minimal strain, satisfied; not purged by milk/minor laxatives; medium purgative dose.
- Why it matters: without koshtha assessment, shodhana gives ayoga/atiyoga/mithyayoga [T3]. Snehapana duration before shodhana: mridu 3 days, madhya 4-6, krura 7 (Ca.Si.1; AH) [verified x2]. Dose logic: mridu → mridu-virya, alpa matra (milk, draksha, triphala-class); madhya → madhyama; krura → tikshna-virya, uttama matra (trivrit/danti-class) [verified x2: Kalpana Siddhi page + RKM review]. Vagbhata: drug dose depends on vyadhi, koshtha, bala, vaya, desha, kala [T1 via T3].
- Amlapitta relevance: Kashyapa advises vamana first, then pachana, and sramsana (mild purgation) when doshas become pakva and move to pakvashaya — KS.Khila.16/22-31 [T1 via T3]; Charaka: virechana is the treatment par excellence for pitta, vamana for kapha — Ca.Su.20/16,19 [T1]. Baragi 2013 found krura koshtha in 90.5 % of Urdhvaga Amlapitta patients [T3]. Record the patient's koshtha so the vaidya can pick the purgative strength.

### 3.3 Ama assessment
- Definition: due to weak ushma (agni) the first dhatu (rasa) is not properly formed, remains raw in the amashaya and is called ama — AH.Su.13/25; alternative: ama arises when greatly increased doshas mix, like poison forming in stored kodrava — AH.Su.13/26 [T1, verified x2 **on content**: easyayurveda AH.13 page; pocketayurveda summary via search]. **[variant on verse numbers — unverified 2026-09-18]**: a direct check of the Sanskrit was attempted on 2026-09-18 and failed (wisdomlib returned HTTP 403, niimh.nic.in refused the connection, and the session's web-search budget was spent). The verse numbers 13/23-26 are therefore the translator's numbering, not one read off a critical edition. Editions differ by a verse or two: treat the chapter (AH Sutra 13, Doshopakramaniya) as certain and the verse numbers as approximate.
- Sama-dosha lakshana list (AH.Su.13/23-24) — use as the ama checklist, each scored present/absent [verified x2]:
  1. srotorodha (blocked channels — stuffy throat/nose, sticky mouth)
  2. bala-bhramsha (loss of strength)
  3. gaurava (heaviness)
  4. anila-mudhata (vata not moving — gas held, no clean belch/flatus)
  5. alasya (lethargy)
  6. apakti (indigestion)
  7. nishthiva (spitting, excess saliva)
  8. mala-sanga (retention of stool/urine/sweat)
  9. aruchi (no relish)
  10. klama (tired without exertion)
  Plus observed: jihva lepa (coating), sticky/sinking stool (Ca.Chi.15/94), foul odour of stool/sweat/mouth.
- Journal grading: Ama Assessment Instrument — 10 features on 0-10 VAS (sada, aruchi, alasya, udara gaurava, srotorodha, klama, sharira gaurava, anga-vedana, shotha, restlessness), max 100; healthy controls median 5, active ama disease median 44 — Wagh et al. JAIM 2026 [T3, single-source]. Tongue coating: Winkel index by six sextants, 0 none / 1 thin (pink visible) / 2 thick, max 12; posterior-middle coats most; coating correlates with ama score — Wagh et al. JAIM 2026 (tongue) [T3, single-source].
- Sama mala test: stool that sinks is sama (heavy with ama); pakva/nirama stool floats — valid only if stool is neither watery nor very hard and not vitiated by sheeta guna/kapha — Ca.Chi.15/94 [T1, verified x2 with YR mala pariksha via IJPRA 2025].
- Treatment logic to know (for reading the vaidya's plan): sama doshas are not to be expelled forcibly; first deepana-pachana, then snehana-svedana, then shodhana at the right time — AH.Su.13/28-29 [T1, verified x2].

### 3.4 Sama vs nirama pitta (and kapha, vata) — the key throat distinction
| State | Lakshana | Source |
|---|---|---|
| **Sama pitta** | durgandhi (foul), harita/shyava (green/dark), amla (sour), ghana (dense, sinks), guru (heavy), sthira (stagnant), amlika (sour belching), kantha-hrit daha | [verified x2 **on content**: easyayurveda sama/nirama pitta; ayurvedbharati ch.10] [**variant on attribution; verse numbers unverified 2026-09-18**: ayurvedbharati cites AH.Su.13, while other secondary texts attribute the list to Sharangadhara or to Madhava Nidana. A second attempt to fix the verse on 2026-09-18 failed — wisdomlib returned HTTP 403, niimh.nic.in refused the connection, and the session's web-search budget was spent. **Use the lakshana list; do not cite a verse number for it**] |
| **Nirama pitta** | tamra/peeta (copper/yellow), ati-ushna, tikta/katu, laghu, asthira (spreads on water), vigandhi (no foul smell), gives ruchi, pakti, bala; katu-vipaka | same [verified x2] |
| **Sama kapha** | avila (turbid), tantumat (stringy), styana (thick), kanthe lagati (sticks in throat), durgandha, does not come out on hawking, aruchi | ayurvedbharati ch.10 [single-source] — this is the "throat phlegm that will not clear" pattern |
| **Nirama kapha** | phenila (frothy), pinda (lumpy), pandu, laghu, comes out easily, gives ruchi, no foul smell | same [single-source] |
| **Sama vata** | vibandha, agnisada, tandra, antrakujana, vedana, shotha, staimitya, snigdha-ruchi (craves oily/dry?) — text reads "craving for pungent/dry foods" | ayurvedbharati ch.10 [single-source] |
| **Nirama vata** | vishada (clear), ruksha, alpa-vedana, moves freely, relieved by snigdha | same [single-source] |

How to use: sour + foul + heavy + burning throat = sama pitta (ama-flare: langhana/pachana focus). Hot + bitter/pungent + light + no foul smell + good appetite = nirama pitta (shamana with madhura-tikta-sheeta focus). Sticky, stringy phlegm that sticks in the throat and will not shift = sama kapha (kapha-ama avarana over the pitta).

---

## 4. The rest of Dashavidha pariksha, plus desha, kala, bala

Charaka's tenfold patient examination: prakriti, vikriti, sara, samhanana, pramana, satmya, sattva, aharashakti, vyayamashakti, vaya — Ca.Vi.8/94 [T1, verified x2]. Strength of each (except vikriti) is graded pravara/madhyama/avara; the dosha strength is inferred from vikriti; medicines are then matched strong/medium/mild — Ca.Vi.8/123 [T1].

**Verification note 2026-09-18.** Verses 8/101, 8/116, 8/117, 8/118, 8/119, 8/120, 8/121 and 8/123 were re-read verbatim in the carakasamhitaonline critical edition (Sanskrit with IAST) on 2026-09-18 and each matches the row below: 8/101 (vikriti examined by hetu, dosha, dushya, prakriti, desha, kala, bala and linga); 8/116 (sama-suvibhakta-asthi, subaddha-sandhi, suniviṣṭa-mamsa-shonita = susamhata, strong); 8/117 (the whole body is eighty-four angula — "kevalam punah sharira-anguli-parvani chaturashitih"); 8/118 (ghrita-kshira-taila-mamsarasa-satmya and sarva-rasa-satmya are balavanta; ruksha-satmya and eka-rasa-satmya alpabala; vyamishra-satmya madhyabala); 8/119 (pravara-sattva unshaken even by great affliction though of small body; madhyama steadied by self or others; hina-sattva cannot bear even small pain, and faints at the sight of blood); 8/120 (aharashakti examined by abhyavaharana shakti and jarana shakti — "bala-ayushi hi ahara-ayatte"); 8/121 (vyayamashakti examined by karmashakti, giving the threefold bala); 8/123 (medicine divided tikshna / madhyama / mridu to match the dosha strength). All these rows are therefore **[T1, verified directly]**. The only item still short of that is the exact year boundary in the Vaya row: 8/122 as fetched gives the three divisions and the hundred-year span but not the 16 / 30 / 60 cut-offs, which remain [single-source] from the common rendering.

| Item | What to record (self-description) | Classical anchor | Source |
|---|---|---|---|
| **Vikriti** | Examined by strength of hetu (cause), dosha, dushya, prakriti, desha, kala and lakshana; disease is severe when dosha/dushya/prakriti/desha/kala all match and cause and symptoms are strong — record the section-2 scores plus the nidana count | Ca.Vi.8/101 | [T1, single-source] |
| **Sara** (tissue excellence) | Tick which you clearly have: tvak-sara (smooth lustrous skin, fine hair), rakta-sara (red lustrous lips/tongue/palms, intolerant of heat), mamsa-sara (well-covered temples/neck/shoulders), meda-sara (unctuous voice/eyes/hair, soft manner), asthi-sara (large heels/ankles/knees/teeth, enduring), majja-sara (soft body, sweet voice, long rounded joints), shukra-sara (gentle, attractive, strong), sattva-sara (memory, devotion, gratitude, courage, free of anxiety). All-sara = very strong; few = weak; moderate = medium | Ca.Vi.8/102-113 | [T1, verified x2: raw text + concept page] — the rakta-sara note "intolerant of heat, lack of endurance" and pitta go together |
| **Samhanana** (compactness) | Well-marked even bones, well-bound joints, well-formed flesh = strong; loose = weak | Ca.Vi.8/116 | [T1] |
| **Pramana** | Simple self-description: height in own finger-breadths ideal = 84 angula; CCRAS: < 80 short, > 88 tall; the patient records "short / medium / tall for my family" and frame size | Ca.Vi.8/117; CCRAS SOP 1.2 | [verified x2] |
| **Satmya** (what is habitual) | Pravara satmya = all six rasas, ghee, milk, oil, meat-soup habitual (strong, enduring); avara = single rasa, rough diet (weak); madhyama mixed. Record: climate of upbringing, cuisine of upbringing, tastes eaten daily now, dairy habit, tea/coffee habit, alcohol, meal timing habit, and how long since the current country/climate became "home" (oka-satmya). Changing a habit is done stepwise (padamsha krama) | Ca.Vi.8/118; Ca.Vi.1/20 (oka-satmya); Ca.Su.7/36-37 (gradual change) | [T1; 8/118 verified x2; 7/36-37 single-source not re-fetched] |
| **Sattva** (mental strength) | Pravara: unmoved even in severe illness though small-bodied; madhyama: steadied by others; avara: cannot bear even mild pain, fear/grief/greed/confusion, faints at frightening sights | Ca.Vi.8/119 | [T1, verified x2] — decides how much reassurance vs plain reporting the tool uses |
| **Aharashakti** | Two parts: abhyavaharana shakti (how much can be eaten with relish) and jarana shakti (how well it is digested); "strength and life depend on diet". Record typical meal size in relation to the matra rule (section 6) and the A2/A3 answers | Ca.Vi.8/120 | [T1, verified x2] |
| **Vyayamashakti** | Capacity for work, three grades; classical safe limit is ardha-shakti (half of capacity, until sweat on forehead/armpits and breath through the mouth) | Ca.Vi.8/121; Ca.Su.7/31-32 (ardha-shakti) | [T1; 8/121 verified x2; 7/31-32 single-source] |
| **Vaya** | Bala (childhood-youth, kapha dominant), madhya (pitta dominant), vriddha/jirna (vata dominant); Charaka divides life by growth up to 16, full strength to 30, stable to 60, decline after — record decade and note the dosha of the stage | Ca.Vi.8/122; AH.Su.1/8 ("early part kapha, middle pitta, old age vata") | [verified x2 for dosha-of-stage; exact year cut-offs single-source (Ca.Vi.8/122 as commonly rendered; raw fetch gave only the "three divisions" sentence)] |
| **Desha (bhumi)** | Where born, grown, fell ill; the usual diet, conduct, strength, satmya and dosha of people there; jangala (dry, vata), anupa (marshy/wet, kapha[-vata]), sadharana (balanced). Kashyapa: Amlapitta is common in anupa desha and advises change of place when treatment fails; Charaka calls anupa ahita | Ca.Vi.8/92-93; AH.Su.1/23; KS.Khila.16/49 via IJAM 2016 | [verified x2 for desha types; Kashyapa single-source] — living abroad: record whether the present land is wet-cold (anupa-like) or dry (jangala-like) and whether local food is satmya yet |
| **Kala** | Season (ritu) with chaya-prakopa-prashama: vata accumulates grishma, aggravates varsha, settles sharad; pitta accumulates varsha, aggravates **sharad**, settles hemanta; kapha accumulates hemanta/shishira, aggravates vasanta, settles grishma. Time of day: kapha first third of day/night, pitta middle, vata last; likewise for meal digestion stages | AH.Su.12; AH.Su.1/8; Ca.Su.6/41 (sharad pitta prakopa) | [verified x2] — Southern-hemisphere or temperate residence: map by weather qualities (hot-dry, wet-cold, windy-dry) rather than calendar month, and note it for the vaidya |
| **Bala** | Sahaja (constitutional), kalaja (season/age), yuktikrita (from diet, exercise, rasayana) — record perceived strength this month vs baseline | Ca.Su.11/36 | [T1, single-source not re-fetched] |

---

## 5. Ashtavidha pariksha — what the patient can self-observe and record

The eightfold examination (nadi, mutra, mala, jihva, shabda, sparsha, drik, akriti) is from Yogaratnakara (not in the Brihat-trayi) — Dudhe & Patil, IJPRA 2025 [T3, verified x2 with JAIMS abstract]. Items below are the self-observable parts with dosha readings from that source unless noted.

| Site | What to look at | Vata reading | Pitta reading | Kapha reading | Ama reading | Note |
|---|---|---|---|---|---|---|
| **Jihva** (tongue, on waking before water) | coat colour/thickness/where; colour of body; cracks; tremor; teeth-marks | dry, cracked, dark/brownish, thin patchy coat | red, inflamed, thin yellow coat, burning | whitish, sticky, thick coat | thick coat esp. back-middle (Winkel sextant B), foul taste | YR via IJPRA 2025; Wagh JAIM 2026 [verified x2] |
| **Mala** (stool) | frequency, form, sinking/floating, odour, stickiness, colour, satisfaction | hard, dry, broken, frothy, dark | yellowish, loose, hot, urgent | whitish, slimy, dense, mucous | foul, sinks, sticky, unsatisfied (sama) vs floats, formed, light (nirama) | YR via IJPRA 2025; Ca.Chi.15/94 [verified x2] |
| **Mutra** (urine) | colour, frequency, froth, heat | pale, frequent, scanty | reddish/deep yellow, hot | oily, whitish, frothy | turbid | YR via IJPRA 2025 [single-source] |
| **Nadi** | only if a vaidya has taught the patient; otherwise record resting pulse "feel" as fast/moderate/slow | snake/leech-like, irregular | frog/crow-like, jumping | swan-like, slow, heavy | — | YR via IJPRA 2025 [single-source]; morning empty-stomach, not after bath/meal/exercise |
| **Shabda** (voice/speech) | hoarseness grade (section 2.3 item 11), voice fatigue, throat-clearing count band, cough sound | rough, hoarse, obstructed, fast irregular speech | cracked/sharp voice, authoritative | heavy, thick, wet, monotonous, mucoid cough | wet, phlegmy clearing | YR via IJPRA 2025; Ca.Vi.8/98 vatala voice [verified x2] |
| **Sparsha** (touch) | warmth of palms/chest/throat skin, dryness, moisture | cold, rough, dry | warm, moist | soft, cool, damp | — | YR via IJPRA 2025 [single-source] |
| **Drik** (eyes) | redness, burning, dryness, yellow tint, puffiness | sunken, dry, dull | red/yellowish, burning, photophobic | watery, heavy lids, puffy | — | YR via IJPRA 2025; AH.Su.11/7 (pitta: yellow eyes) [verified x2] |
| **Akriti** | posture, puffiness of face, colour today vs baseline | lean | medium, sharp | heavy, soft | dull | YR via IJPRA 2025 [single-source] |

Trividha pariksha mapping (darshana = seeing, sparshana = touching, prashna = asking — Ca.Vi.4/7 [T1, single-source; a re-fetch was not attempted on 2026-09-18 and the verse number is unchanged from the original draft]): darshana covers jihva, mala, mutra, drik, akriti and the tongue photo; sparshana covers skin warmth/dryness and the self-felt pulse; prashna covers every questionnaire item in sections 1, 3, 6 and 7. The tool should label each daily field by which of the three it is, so the vaidya knows what was observed versus reported.

Additional self-observations with classical anchors:
- **Nidra**: timely sleep and easy waking are Chetasabala markers (ASRS items "nidra labho yathakalam", "sukhena pratibodhanam") [T3]; vata vriddhi = insomnia; kapha vriddhi = excess sleep; pitta vriddhi = reduced sleep — AH.Su.11/5-8 [verified x2].
- **Kshudha** (hunger): true hunger arrives with the jirna signs (clean belch, lightness, urges passed) — AH.Su.8/55; hunger that comes with burning, sourness or heaviness is false (vidagdha/ama) — AH.Su.8/23-31 [T1].
- **Trishna**: intense thirst = pitta vriddhi — AH.Su.11/7; also listed under adhoga Amlapitta and pittadhika Amlapitta — MN.51 [verified x2].
- **Udgara** (belching) character: clean/odourless = digested (AH.Su.8/55); sour/bitter = vidagdha pitta (AH.Su.8); mucoid-sweet = ama-kapha; suppressed belch causes hikka, shvasa, aruchi, kampa, chest congestion — Ca.Su.7/18 [verified x2].
- **Sveda**: profuse with odour = pitta (Ca.Vi.8/97; ati-sveda in Ca.Su.20/14); absent sweating with heaviness = mala-sanga of ama (AH.Su.13/24).

---

## 6. Daily tracking template (Ayurvedic terms only)

### 6.1 Daily log schema — fields and allowed values

One row per field, with its own allowed values. Conventions:
- `0-3` always means the grading convention fixed in section 2.3: **0 absent, 1 slight, 2 daily or prolonged, 3 severe**. No field is scored the other way round.
- `single` = exactly one of the listed values. `multi` = tick as many as apply. `derived` = computed by the tool from other fields, never asked.
- `meal[i]_*` and `post[i]_*` repeat once per meal, i = 1, 2, 3...; `aushadha[j]_*`, `apathya[j]_*` and `vega[j]_*` repeat once per entry.
- Any field may be left `unknown`. A field left `unknown` is excluded from that day's denominators; it is **never** silently counted as 0.
- Every field named anywhere in sections 6.2, 6.3, 8 and 9 appears in this table. Nothing outside this table may be referenced by an interpretation rule or by the vaidya-visit template.

| Field | Type | Allowed values | Anchor |
|---|---|---|---|
| `date` | date | `YYYY-MM-DD` | — |
| `ritu_felt` | single | `sheeta-ruksha` / `ushna` / `ardra-sheeta` / `vata-ruksha-windy` / `sharad-like` | AH.Su.12 — seasons read by quality, not by calendar month |
| `desha_note` | single | `home` / `wet-cold` / `dry-windy` / `hot` / `travel` | Ca.Vi.8/92-93 |
| `wake_time` | time | `HH:MM` | Ca.Su.5 dinacharya |
| `brahma_muhurta` | single | `yes` / `no` | AH.Su.2/1 [single-source] |
| `ushahpana` | single | `none` / `ushna-jala` / `ushna-jala-urge-followed` / `other` | practitioner routine [T4 only]; logged without claim |
| `ushahpana_volume` | single | `none` / `small` / `medium` / `large` | same |
| `jihva_coat` | single | `none` / `thin` / `thick` | section 5; Wagh JAIM 2026 |
| `jihva_coat_colour` | single | `none` / `white` / `yellow` / `grey` / `brown` | section 5 |
| `jihva_coat_site` | single | `none` / `front` / `middle` / `back` / `back+middle` / `all` | section 5 |
| `jihva_body` | single | `pink` / `red` / `pale` / `dark` | section 5 |
| `jihva_cracks` | single | `yes` / `no` | section 5 |
| `mala_time` | time | `HH:MM` / `none` | Ca.Chi.15/94; YR |
| `mala_count` | single | `0` / `1` / `2` / `3` / `4+` | YR |
| `mala_form` | single | `none` / `hard` / `formed` / `soft` / `loose` / `watery` | YR |
| `mala_float` | single | `floats` / `sinks` / `unknown` | Ca.Chi.15/94 — sinking stool is sama |
| `mala_odour` | single | `mild` / `foul` | Ca.Chi.15/94 |
| `mala_sticky` | single | `yes` / `no` | AH.Su.13 sama-dosha lakshana |
| `mala_colour` | single | `normal` / `yellow` / `dark` / `pale` | YR; Ca.Su.20/14 (haridra varchas = pitta) |
| `mala_satisfaction` | single | `yes` / `no` | koshtha criteria, section 3.2 |
| `vibandha` | derived | `yes` when `mala_count = 0` **or** `mala_form = hard`; otherwise `no` | AH.Su.11/5-6 vata vriddhi |
| `mutra_colour` | single | `pale` / `yellow` / `deep-yellow` / `red-tinged` | YR |
| `mutra_frequency` | single | `low` / `normal` / `high` | YR |
| `mutra_burning` | single | `yes` / `no` | AH.Su.11/7 |
| `meal[i]_time` | time | `HH:MM` | Ca.Su.5/3-8 |
| `kshudha_before_meal[i]` | single | `true` (clean belch and lightness first) / `false-burning` / `false-heavy` / `none` | AH.Su.8/55 |
| `meal[i]_rasa` | multi | `madhura` / `amla` / `lavana` / `katu` / `tikta` / `kashaya` — tick the ones that dominated | Ca.Su.5; MN.51/1 nidana |
| `meal[i]_guna` | multi | `guru` / `laghu` / `snigdha` / `ruksha` / `ushna` / `sheeta` / `abhishyandi` / `viruddha` / `paryushita` / `pishtanna` / `dadhi` / `fermented` / `fried` | KS.Khila.16/3-6; table 2.2a |
| `meal[i]_matra` | single | `below` / `at` / `above` — measured against the rule: two parts solid, one liquid, one part left empty (AH.Su.8/46); heavy food only to half or one-third of satiety (Ca.Su.5/7) | AH.Su.8/46; Ca.Su.5/7 |
| `meal[i]_drink` | single | `none` / `sips-warm` / `cold` / `much` | KS.Khila.16 antarodaka-pana |
| `meal[i]_calm` | single | `yes` / `no` — sitting, unhurried, not at a screen | Ca.Su.5; Ghosh & Baghel manasika nidana |
| `post[i]_udgara` | single | `none` / `clean` / `sour` / `bitter` / `mucoid` | AH.Su.8/55; AH.Su.8/23-31 |
| `post[i]_gaurava` | 0-3 | 0 absent to 3 severe | section 2.3 item 5 |
| `post[i]_daha` | 0-3 | 0 absent to 3 severe | section 2.3 item 2 |
| `post[i]_praseka` | 0-3 | 0 absent to 3 severe | section 2.3 item 13 |
| `post[i]_utklesha` | 0-3 | 0 absent to 3 severe | section 2.3 item 3 |
| `post[i]_adhmana` | 0-3 | 0 absent to 3 severe | AH.Su.11/5-6 vata vriddhi |
| `kantha_daha` | 0-3 | 0 absent to 3 severe | section 2.3 item 9 |
| `kantha_graha` | 0-3 | 0 absent to 3 severe | section 2.3 item 10 |
| `kantha_shosha` | 0-3 | 0 absent to 3 severe — dryness of the throat | Ca.Su.20/11 mukhashosha; AH.Su.11/5-6 |
| `kantha_kandu` | 0-3 | 0 absent to 3 severe | section 2.3 item 14 |
| `svarabheda` | 0-3 | 0 = voice exactly at the prakriti item-10 baseline, to 3 severe | section 2.3 item 11 |
| `kasa` | 0-3 | 0 absent to 3 severe | section 2.3 item 12 |
| `kasa_type` | single | `none` / `dry` / `wet` | AH.Su.11/8 (kasa under kapha); a dry tickly kasa reads as vata |
| `praseka` | 0-3 | 0 absent to 3 severe | section 2.3 item 13 |
| `clearing_band` | 0-3 | `0` = 0-2 throat-clearings in the day / `1` = 3-10 / `2` = 11-30 / `3` = more than 30 | section 2.3 item 14 |
| `kapha_quality` | single | `none` / `sticky-hard-to-clear` (sama kapha) / `frothy-easy` (nirama kapha) | section 3.4 |
| `kantha_worst_time` | single | `none` / `waking` / `after-meal` / `evening` / `night-lying-down` | section 2.3 |
| `warm_drink_response` | single | `not-tried` / `eases` / `no-change` / `worsens-burning` | section 8 rule 12 (Kashyapa's three upacharas) |
| `vak_shrama` | single | `none` / `under-1h` / `1-3h` / `over-3h` — long talking, shouting or singing | AH.Su.12 udana; section 8 rule 15 |
| `trishna` | 0-3 | 0 absent to 3 severe | AH.Su.11/7; Ca.Su.20/14 trishnadhikya |
| `klama` | 0-3 | 0 absent to 3 severe | section 2.3 item 8; MN.51/2 |
| `aruchi` | 0-3 | 0 = relish for all food, to 3 = no desire for food | section 2.3 item 6 |
| `tandra` | 0-3 | 0 absent to 3 severe — drowsiness | Ca.Su.20/17; AH.Su.11/7-8 |
| `gaurava_day` | 0-3 | whole-day body heaviness, 0 absent to 3 severe | section 2.3 item 5 |
| `sveda` | single | `none` / `normal` / `profuse-smelly` | Ca.Vi.8/97; Ca.Su.20/14 atisveda |
| `sheeta_abhilasha` | single | `yes` / `no` — wanting warmth, disliking cold | AH.Su.11/5-6 |
| `drik` | single | `clear` / `red` / `burning` / `puffy` / `dry` | section 5; AH.Su.11/7 |
| `sparsha_warmth` | single | `cool` / `normal` / `warm` — palms, chest and throat skin | section 5 sparsha |
| `sparsha_skin` | single | `dry` / `normal` / `moist` | section 5 sparsha |
| `bedtime` | time | `HH:MM` | Ca.Chi.15 (night eating) |
| `last_meal_to_bed_h` | number | hours, one decimal place | section 8 rule 6 |
| `sleep_position` | single | `left` / `right` / `back` / `head-raised` | [T4 routine — logged without claim] |
| `sleep_quality` | single | `sound` / `broken` / `late-onset` / `early-waking` | AH.Su.11/5-8 |
| `night_symptoms` | multi | `none` / `kasa` / `daha` / `sour-rise` / `dry-mouth` | section 2.3; AH.Su.1/8 (pitta holds the middle third of the night) |
| `diwasvapna` | single | `yes` / `no` | KS.Khila.16/3-6 |
| `diwasvapna_after_meal` | single | `yes` / `no` / `n/a` | KS.Khila.16 bhuktamatra-svapna |
| `vega[j]_urge` | single | `udgara` / `kshavathu` / `kshudha` / `trishna` / `nidra` / `mutra` / `purisha` / `apana-vata` / `chhardi` / `jrimbha` | Ca.Su.7/3-4 |
| `vega[j]_count` | integer | 1 or more | Ca.Su.7/3-4 |
| `manas_krodha` | 0-3 | 0 absent to 3 severe | Ghosh & Baghel manasika nidana |
| `manas_chinta` | 0-3 | 0 absent to 3 severe | same |
| `manas_bhaya` | 0-3 | 0 absent to 3 severe | same |
| `manas_shoka` | 0-3 | 0 absent to 3 severe | same |
| `manas_avyagrata` | 0-3 | loss of one-pointedness: `0` = held attention easily all day, to `3` = could not hold attention at all. **Scored as the loss, not as the focus**, so 0 is the absent/best end, as in every other field | Ca.Sha.4; section 2.3 scale convention |
| `manas_overall` | single | `prasanna` / `rajasika-restless` / `tamasika-dull` | Ca.Sha.4/36-40 |
| `vyayama_type` | text | free text, or `none` | Ca.Su.7/31-32 |
| `vyayama_minutes` | integer | 0 or more | same |
| `vyayama_to_ardha_shakti` | single | `none` / `before` (stopped short of it) / `at` (sweat on the forehead, breath through the mouth) / `beyond` | Ca.Su.7/31-32 |
| `vyayama_time` | single | `morning` / `midday` / `evening` | Ca.Su.7 |
| `vyayama_vs_meal` | single | `before` / `after` | Ca.Su.7 |
| `aushadha[j]_name` | text | as the vaidya prescribed it | — |
| `aushadha[j]_dose` | text | as prescribed | — |
| `aushadha[j]_anupana` | single | `ushna-jala` / `madhu` / `ghrita` / `dugdha` / `takra` / `other` | AH.Su.13/37-41 aushadha-sevana-kala [single-source, verse numbers not re-fetched] |
| `aushadha[j]_kala` | single | `abhakta` (empty stomach) / `pragbhakta` (before food) / `madhyabhakta` / `adhobhakta` (after food) / `samabhakta` / `nisha` (bedtime) | same |
| `aushadha[j]_taken` | single | `yes` / `no` | — |
| `aushadha[j]_missed_reason` | text | free text, or `n/a` | — |
| `aushadha[j]_effect` | multi | `none-noticed` / `easing` / `burning` / `heaviness` / `loose-stool` / `other` — **logged only; discuss with your vaidya** | section 8 rule 13 |
| `apathya[j]_item` | text | what was actually eaten or done | KS.Khila.16/3-6 |
| `apathya[j]_category` | single | `aharaja` / `viharaja` / `manasika` | Ghosh & Baghel |
| `apathya[j]_tag` | single | any value from the **Log tag** column of table 2.2a (`NA-*`, `NV-*`, `NM-*`, `AM`) | table 2.2a |
| `pathya_ticks` | multi | `ushna-jala` / `laghu-supachya-bhojana` / `tikta-shaka` / `yava-godhuma-purana-shali-mudga` / `ate-only-when-hungry` / `last-meal-early` / `no-dadhi` / `no-day-sleep` / `calm-meal` / `ardha-shakti-vyayama` — ten possible, so the day's pathya adherence is ticks / 10 | KS.Khila.16 pathya; MN/YR pathya |
| `note` | text | one free line | — |

### 6.1a Worked example of one day's log (illustrative values)
```
date: 2026-09-17 | ritu_felt: sharad-like | desha_note: wet-cold
wake_time 06:40 | brahma_muhurta: no | ushahpana: ushna-jala-urge-followed | ushahpana_volume: medium
jihva_coat: thick | jihva_coat_colour: yellow | jihva_coat_site: back+middle | jihva_body: red | jihva_cracks: no
mala_time 07:10 | mala_count 1 | mala_form soft | mala_float sinks | mala_odour foul | mala_sticky yes | mala_colour yellow | mala_satisfaction no | (vibandha derived: no)
mutra_colour deep-yellow | mutra_frequency normal | mutra_burning no
meal1_time 08:30 | kshudha_before_meal[1] false-heavy | meal1_rasa madhura, amla | meal1_guna guru, abhishyandi, sheeta, dadhi | meal1_matra at | meal1_drink cold | meal1_calm no
post1_udgara sour | post1_gaurava 2 | post1_daha 1 | post1_praseka 2 | post1_utklesha 0 | post1_adhmana 0
meal2_time 13:45 | kshudha_before_meal[2] true | meal2_rasa madhura, lavana, katu | meal2_guna laghu, ushna | meal2_matra above | meal2_drink sips-warm | meal2_calm yes
post2_udgara clean | post2_gaurava 1 | post2_daha 2 | post2_praseka 1 | post2_utklesha 0 | post2_adhmana 0
meal3_time 21:15 | kshudha_before_meal[3] false-burning | meal3_rasa amla, katu, lavana | meal3_guna snigdha, guru, fried | meal3_matra above | meal3_drink cold | meal3_calm yes
post3_udgara sour | post3_gaurava 2 | post3_daha 2 | post3_praseka 1 | post3_utklesha 0 | post3_adhmana 1
kantha_daha 2 | kantha_graha 1 | kantha_shosha 0 | kantha_kandu 1 | svarabheda 1 | kasa 1 | kasa_type dry | praseka 2 | clearing_band 2 | kapha_quality sticky-hard-to-clear | kantha_worst_time after-meal
warm_drink_response eases | vak_shrama 1-3h
trishna 2 | klama 2 | aruchi 1 | tandra 1 | gaurava_day 2 | sveda normal | sheeta_abhilasha no | drik red | sparsha_warmth warm | sparsha_skin normal
bedtime 23:30 | last_meal_to_bed_h 2.3 | sleep_position head-raised | sleep_quality broken | night_symptoms sour-rise | diwasvapna no | diwasvapna_after_meal n/a
vega[1]_urge udgara, vega[1]_count 3 | vega[2]_urge mutra, vega[2]_count 1
manas_krodha 2 | manas_chinta 1 | manas_bhaya 0 | manas_shoka 0 | manas_avyagrata 2 | manas_overall rajasika-restless
vyayama_type walk | vyayama_minutes 25 | vyayama_to_ardha_shakti before | vyayama_time evening | vyayama_vs_meal before
aushadha[1]_name [as prescribed] | _dose [as prescribed] | _anupana ushna-jala | _kala adhobhakta | _taken yes | _missed_reason n/a | _effect none-noticed
aushadha[2]_name [as prescribed] | _dose [as prescribed] | _anupana ushna-jala | _kala adhobhakta | _taken no | _missed_reason late meeting | _effect n/a
apathya[1]_item curd at breakfast | _category aharaja | _tag NA-abhishyandi
apathya[2]_item cold drink with meals | _category aharaja | _tag NA-drava
apathya[3]_item fried dinner | _category aharaja | _tag NA-fried
apathya[4]_item dinner at 21:15, bed 23:30 | _category viharaja | _tag NV-prajagarana
apathya[5]_item belch held back three times | _category viharaja | _tag NV-vega
pathya_ticks: ushna-jala, calm-meal   (2 of 10)
note: burning peaked after the fried late dinner; morning phlegm sticky.
```
Rule firings for this day (section 8): **#2** (`praseka` 2 + `gaurava_day` 2 + `jihva_coat` thick + `mala_float` sinks + `kapha_quality` sticky-hard-to-clear = kapha-ama over pitta), **#6** (`last_meal_to_bed_h` 2.3 with `meal3_guna` guru/fried, and `night_symptoms` sour-rise), **#7** (`meal1_guna` includes dadhi, and `svarabheda` 1 with `kantha_worst_time` after-meal), **#9** (`manas_krodha` 2). Rule #12 is also satisfied in the kapha direction (`warm_drink_response` eases). Every trigger named here is a field in table 6.1.

### 6.2 Weekly summary schema

Every quantity below is computed from the fields of table 6.1 and names them explicitly, so the summary can be produced without interpretation.

- **Kantha and post-meal curves.** Mean and maximum of `kantha_daha`, `kantha_graha`, `kantha_shosha`, `kantha_kandu`, `svarabheda`, `kasa`, `praseka`, `clearing_band`, and of each `post[i]_gaurava / _daha / _praseka / _utklesha / _adhmana`; plus the count of days each reached 2 or more.
- **Ama index for the week (0-35).** For each of the seven days, add one point for each of these five that is true, then total across the week: `jihva_coat = thick`; `mala_float = sinks` **or** `mala_sticky = yes`; `gaurava_day` ≥ 2; `aruchi` ≥ 1; `klama` ≥ 1. Maximum 5 x 7 = 35.
- **Dosha lean of the week.** A day contributes a point to a dosha for each of its listed fields that reached the stated threshold. Pitta: `kantha_daha` ≥ 2, any `post[i]_udgara = sour`, `trishna` ≥ 2, `mala_colour = yellow`, `mutra_colour = deep-yellow`, `manas_krodha` ≥ 2, `drik = red` or `burning`, `sparsha_warmth = warm`. Kapha: `praseka` ≥ 2, `gaurava_day` ≥ 2, `tandra` ≥ 2, `kantha_kandu` ≥ 2, `jihva_coat_colour = white`, `aruchi` ≥ 2, `kapha_quality = sticky-hard-to-clear`. Vata: `kantha_graha` ≥ 2, `kantha_shosha` ≥ 2, any `post[i]_adhmana` ≥ 2, `vibandha = yes`, `sleep_quality = late-onset` or `broken`, `manas_bhaya` ≥ 2 or `manas_chinta` ≥ 2, `svarabheda` varying by 2 or more between days in the week. Report the three totals and their ranking.
- **Agni state this week** — section 3.1 items A1-A9 answered once for the week.
- **Nidana tally.** Count of `apathya[j]_tag` values by `apathya[j]_category`, and the three most frequent tags.
- **Aushadha adherence** = count of `aushadha[j]_taken = yes` divided by the number of doses prescribed, as a percentage; plus the count of entries where `aushadha[j]_anupana` or `aushadha[j]_kala` departed from the prescription, and every non-empty `aushadha[j]_effect`.
- **Pathya adherence** = total `pathya_ticks` across the week divided by 70 (ten possible per day), as a percentage; plus the tick that was missed most often.
- **Sleep.** Mean `last_meal_to_bed_h`; count of nights where `night_symptoms` is anything other than `none`.
- **Vihara.** Total `vega[j]_count` across the week; count of days with `diwasvapna = yes`; count of days with `vyayama_minutes` > 0; count of days with `vak_shrama` = `1-3h` or `over-3h`.
- **Notable pattern** — the section 8 rules that fired, auto-filled — and one question for the vaidya.

### 6.3 Monthly vikriti re-scoring
- Re-score the 14-item Amlapitta scale (section 2.3), the ama checklist (3.3), sama/nirama pitta and kapha readings (3.4), the agni state (3.1) and koshtha (3.2).
- Compare with the previous month and with intake; note ritu change; record sattva/bala self-rating (pravara/madhyama/avara) and vyayamashakti.
- Studies re-assess Amlapitta at 15-30 day intervals (Khapre 2021: 28 days; Sharma 2025: 30-day follow-up; Ghosh & Baghel: 30 days) — a monthly cadence matches practice [T3, verified x2].

---

## 7. Question bank for the daily companion (rotating, kind, non-clinical)

**IDs.** Each question's number is its permanent ID, written `Q1` to `Q87` when referred to elsewhere. IDs are never renumbered and never reused: a retired question keeps its number and is marked retired; a new question takes the next free number, Q88 onward. The rotation rule in 7.1 addresses questions only by ID.

**Tags** (every question carries at least one): `AG` agni; `AM` ama; `PI` pitta; `KA` kapha; `VA` vata; `NA` nidana-ahara; `NV` nidana-vihara; `NM` nidana-manas; `KN` kantha; `AU` aushadha adherence; `PA` pathya adherence; `VQ` free text for the vaidya (not scored, not counted in any tally).

Each question is short enough to answer in one tap. No question may contain a diagnosis or a treatment instruction.

Morning set
1. Did you wake before sunrise, or did sleep hold you? (KA/VA) — AH.Su.11
2. Look at your tongue before water: clean, thin coat, or thick coat? (AM)
3. Where is the coat — front, middle, back? (AM)
4. Is the tongue pink, red, or pale/dark this morning? (PI/KA/VA)
5. Any sour or bitter taste in the mouth on waking? (PI) — Ca.Su.20/14 tiktasyata
6. Is your voice rough on waking? How long until it clears? (KN/VA)
7. Any burning in the throat on waking? (KN/PI)
8. Did you clear your throat more than a few times before breakfast? (KN/KA)
9. Any phlegm to spit this morning — sticky and hard to shift, or easy? (KA/AM) — sama vs nirama kapha
10. Was there a stool? Did it float or sink? (AM) — Ca.Chi.15/94
11. Was the stool formed, hard, or loose? (VA/PI/KA)
12. Did it smell foul or sticky to pass? (AM)
13. Did you feel light and finished after? (AG)
14. What colour was the first urine — pale, yellow, deep yellow? (PI)
15. Did you drink warm water on waking? (PA)
16. Did you feel a clean belch and real hunger before breakfast, or did you eat by the clock? (AG) — AH.Su.8/55
17. How are your eyes — clear, red, burning, puffy? (PI/KA)
18. Any headache or heaviness in the head? (KA/AM/VA)

Meal set (asked after the main meals)
19. Was there true hunger before this meal? (AG)
20. Which tastes led the meal — sour, salty, pungent, sweet, bitter, astringent? (NA) — MN.51/1 nidana
21. Was the meal heavy or light for you? (NA/AG)
22. Was anything fried, fermented, very oily, or "flour-heavy"? (NA) — KS.Khila.16 pishtanna, snigdha
23. Any curd, cheese, or milk with sour/salty food? (NA) — viruddha, abhishyandi
24. Did you drink much water or anything cold with the meal? (NA) — antarodaka-pana
25. Did you eat before the last meal had settled? (NA) — adhyashana
26. Did you stop at two-thirds full, or go past it? (NA/AG) — AH.Su.8/46
27. Did you eat calmly and sitting, or hurried/standing/at a screen? (NV)
28. Within an hour after: any sour or bitter belch? (PI)
29. Any heaviness or sleepiness after? (KA/AM)
30. Any burning in chest or throat after? (PI/KN)
31. Any watering of the mouth or need to swallow repeatedly after? (KA/KN)
32. Any bloating or gas after? (VA)
33. Did you lie down or nap after eating? (NV) — bhuktamatra-svapna, diwasvapna
34. Did you bathe right after eating? (NV) — KS.Khila.16
35. Any tea, coffee, tobacco, or alcohol today, and when? (NA) — Baragi 2013

Throat set (evening)
36. Throat burning today: none, a little, part of the day, most of the day? (KN/PI)
37. Any lump or tightness in the throat? Constant or comes and goes? (KN/VA)
38. Throat itch? (KN/KA)
39. Roughly how often did you clear your throat: rarely, a few times an hour, constantly? (KN/KA)
40. Any cough — dry and tickly, or wet with phlegm? (KN/VA vs KA)
41. How did the voice hold up — fine, tired by evening, hoarse all day? (KN)
42. Is the throat dry, or wet and sticky? (VA vs KA)
43. When was the throat worst — waking, after a meal, evening, lying down? (KN)
44. Did warm water or a warm drink ease it, or make burning worse? (KA vs PI)
45. Did anything sour, spicy, or fried come before the worst moment? (NA/PI)

Body and mind set
46. Thirst today: little, normal, strong? (PI/VA)
47. Did you feel heat in the body, sweating more than usual? (PI)
48. Did you feel cold, or want warmth? (VA/KA)
49. Heaviness in the body today? (KA/AM)
50. Tired without having done much? (AM) — klama
51. Any body ache or stiffness? (AM/VA)
52. Appetite today: keen, normal, dull, or none? (AG/KA)
53. Was there a moment of anger or sharp irritation today? (NM/PI)
54. Was there worry, restlessness, or fear? (NM/VA)
55. Was there grief or a heavy, dull mood? (NM/KA)
56. Was it hard to hold your attention on one thing today? (NM) — records `manas_avyagrata` (loss of ekagrata), so that "not at all hard" is 0 and "could not hold it at all" is 3
57. Did you hold back a belch, sneeze, yawn, hunger, thirst, urine, stool, or sleep because of work or company? (NV) — Ca.Su.7/3-4
58. Did you skip a meal while hungry, or eat while not hungry? (NA/AG) — vishamashana
59. Did you move your body today — how long, and did you get a light sweat? (NV/PA) — ardha-shakti
60. Any long talking, shouting, or singing today? (KN/VA) — udana strain
61. Did you sit in wind, cold-damp, or strong sun for long? (NV)
62. Any late night or broken sleep last night? (NV/VA) — prajagarana

Aushadha and pathya set
63. Did you take the morning medicine as your vaidya set it? (AU)
64. With the right anupana (warm water / honey / ghee / milk)? (AU)
65. At the right time — before, with, or after food? (AU)
66. Evening/bedtime dose taken? (AU)
67. If a dose was missed, what got in the way? (AU)
68. Any change you noticed after a dose — easing, burning, heaviness, loose stool? (AU) — log only, discuss with your vaidya
69. Was the last meal at least three hours before bed? (PA)
70. Was the last meal light — soup, khichadi, cooked vegetables? (PA)
71. Any curd or heavy dairy at night? (NA) — dadhi at night is apathya
72. Did you keep the head a little raised in bed? (PA) [T4 routine — log only]
73. Did you sleep on the left side? (PA) [T4 routine — log only]
74. Did you follow one bitter/light item today (tikta shaka, yava, mudga)? (PA) — KS.Khila.16 pathya
75. Did you avoid the three tastes your vaidya asked you to limit (amla, lavana, katu)? (PA)
76. Was there a day-sleep? (NV)

Night set (short)
77. Any burning, cough, or sour rise while lying down? (KN/PI)
78. Did you wake with a dry mouth or throat? (VA)
79. Did sleep come easily and was it sound? (VA/KA)
80. How many hours from last bite to lying down? (NV)

Weekly reflective set
81. Compared with last week, is the throat better, same, or worse? (KN)
82. Which meal pattern seemed kindest this week? (NA)
83. Which day was worst, and what came before it? (NA/NV/NM)
84. Do you feel lighter or heavier than a week ago? (AM)
85. Is hunger arriving more on time? (AG)
86. Is the voice steadier? (KN)
87. Anything you want to raise with your vaidya? (VQ)

### 7.1 Rotation rule — an executable procedure

This runs once per day. Its only inputs are **yesterday's daily log** (table 6.1), this week's running totals (6.2), the calendar, and the per-question "last asked" date. It uses no judgement: follow the steps in order.

**Step 1 — Fix the day type.** If today is the patient's chosen weekly-reflection day (one fixed weekday, set at intake), `day_type = reflection` and `cap = 16`. Otherwise `day_type = ordinary` and `cap = 12`.

**Step 2 — Start the list with the core six, always asked, in this order:**
`Q2, Q10, Q16, Q36, Q39, Q63` (tongue coat, stool float, true hunger, throat burning, clearing frequency, morning medicine).

**Step 3 — Evaluate the three dosha triggers from yesterday's log.** Each trigger counts how many of its fields met the threshold **in yesterday's log**, not from yesterday's answers:
- `pitta_hits` = the number of these that are true: `kantha_daha` ≥ 2; any `post[i]_udgara = sour` or `bitter`; `trishna` ≥ 2; `manas_krodha` ≥ 2; `sparsha_warmth = warm`; `mutra_colour = deep-yellow`; `drik = red` or `burning`.
- `kapha_hits` = the number of these that are true: `praseka` ≥ 2; `gaurava_day` ≥ 2; `jihva_coat = thick`; `tandra` ≥ 2; `clearing_band` ≥ 2; `kapha_quality = sticky-hard-to-clear`; `aruchi` ≥ 2; `klama` ≥ 2.
- `vata_hits` = the number of these that are true: `kantha_graha` ≥ 2; `kantha_shosha` ≥ 2; any `post[i]_adhmana` ≥ 2; `vibandha = yes`; `sleep_quality = late-onset` or `broken`; `manas_chinta` ≥ 2 or `manas_bhaya` ≥ 2; total `vega[j]_count` ≥ 3; `vak_shrama` = `1-3h` or `over-3h`.
- If yesterday's log is missing or more than half its fields are `unknown`, treat all three counts as 0 and go to step 6.

**Step 4 — Append the dosha sets, in this fixed order, for each trigger that reached 2 or more hits.** Append whole sets; do not append a set twice.
- Pitta set (if `pitta_hits` ≥ 2): `Q20, Q24, Q35, Q44, Q45, Q71, Q77`.
- Kapha set (if `kapha_hits` ≥ 2): `Q21, Q22, Q23, Q33, Q52, Q59, Q74, Q76`.
- Vata set (if `vata_hits` ≥ 2): `Q25, Q26, Q27, Q58, Q60, Q61, Q69, Q80`.

**Step 5 — Season overlay.** Read `ritu_felt` from yesterday's log (or, if absent, from today's weather):
- `sharad-like` or `ushna`: append the pitta set even if step 4 did not (Ca.Su.6/41 — accumulated pitta aggravates in sharad).
- `ardra-sheeta`: append the kapha set even if step 4 did not (kapha chaya-prakopa, AH.Su.12), and append `Q19` and `Q21` (agni is weak in the rains — Ca.Su.6/33-34).
- `vata-ruksha-windy`, or `desha_note = travel` on any day this week: append the vata set even if step 4 did not.
- `sheeta-ruksha`: no overlay.

**Step 6 — Adherence override.** If this week's aushadha adherence (6.2) is below 80 %, append `Q64, Q65, Q66, Q67, Q68` and treat all of `Q63`-`Q68` as unskippable in step 8. Keep doing this every day until the weekly figure reaches 80 % again.

**Step 7 — Reflection day.** If `day_type = reflection`, append `Q81, Q82, Q83, Q84, Q85, Q86, Q87`, and treat them as unskippable in step 8.

**Step 8 — Trim to the cap.** Remove duplicates, keeping the first occurrence. If the list is still longer than `cap`, drop questions from the **end** of the list until it fits, but never drop an unskippable question (core six from step 2; the step 6 set while the override holds; the step 7 set on a reflection day). If the unskippable questions alone exceed `cap`, ask them all and let the cap be exceeded for that day only.

**Step 9 — Fill any spare room by rotation.** If the list is shorter than `cap`, add questions that are not yet on today's list, choosing the one **least recently asked** each time (and, where two are equally stale, the lower ID first), until the list reaches `cap`. Skip any question whose subject did not occur (for example a meal-set question when no meal was logged). Record today's date against every question asked, so "least recently asked" stays meaningful.

**Step 10 — Order and deliver.** Ask in set order: morning set (Q1-Q18) at the morning prompt, meal set (Q19-Q35) after each main meal, throat set (Q36-Q45) in the evening, body-and-mind set (Q46-Q62) in the evening, aushadha and pathya set (Q63-Q76) with the relevant dose or at the evening prompt, night set (Q77-Q80) at bedtime, weekly set (Q81-Q87) on the reflection day. Phrase every question gently. No question may name a disease or prescribe anything.

**Worked run.** Yesterday: `kantha_daha` 2, `post1_udgara` sour, `trishna` 2, `manas_krodha` 2 → `pitta_hits` = 4. `praseka` 2, `gaurava_day` 2, `jihva_coat` thick, `clearing_band` 2, `kapha_quality` sticky → `kapha_hits` = 5. `kantha_graha` 1, `vibandha` no, `sleep_quality` broken, `vega` total 4 → `vata_hits` = 2. `ritu_felt` = sharad-like. Ordinary day, cap 12, adherence 92 %.
Step 2 gives 6. Step 4 appends pitta (7) → 13, kapha (8) → 21, vata (8) → 29. Step 5 adds nothing new (pitta set already present). Steps 6-7 add nothing. Step 8 trims from the end back to 12: the list keeps `Q2, Q10, Q16, Q36, Q39, Q63` (unskippable) plus `Q20, Q24, Q35, Q44, Q45, Q71` — the first six of the pitta set — and drops the rest for today. Step 9 has no room. Tomorrow the kapha set, having been dropped, is the stalest and is reached first by step 9 if the triggers repeat.

---

## 8. Trends and interpretation rules (from the tradition)

Format: pattern → likely dosha picture → classical pathya-apathya and shamana focus → what to bring to your vaidya. All treatment statements are classical principles for orientation, not instructions; the vaidya decides.

1. **Kantha daha rises together with amlodgara, thirst, warm palms and chest (`sparsha_warmth = warm`), yellowish urine, evening or night worsening (`kantha_worst_time` = evening or night-lying-down)** → nirama or mildly sama pitta vriddhi, tikshnagni background (pittadhika Amlapitta, MN.51; AH.Su.11/7) → avoid amla-lavana-katu, vidahi, ushna, tea/alcohol; favour madhura-tikta-sheeta, laghu food (Ca.Su.6/42 sharad regimen; KS.Khila.16 pathya: purana shali, yava, godhuma, mudga, tikta shaka, cow's milk and ghee); Kashyapa: svadu-sheeta upachara for pitta signs; Charaka: virechana is the pitta treatment par excellence (Ca.Su.20/16) → bring: daha and udgara curves, meal-time map, koshtha (mridu/krura) so the vaidya can consider virechana strength.
2. **Kantha daha rises with praseka, gaurava, morning heaviness, thick white coat, sticky throat phlegm that will not clear, aruchi** (fields `praseka`, `gaurava_day`, `jihva_coat` = thick with `jihva_coat_colour` = white, `kapha_quality` = sticky-hard-to-clear, `aruchi`) → kapha (sama kapha) avarana over pitta — kaphadhika Urdhvaga Amlapitta (Ghosh & Baghel criteria; MN.51 urdhvaga "followed by kapha") → langhana/laghu bhojana, ushna jala, avoid dairy/abhishyandi/pishtanna/day-sleep, favour tikta-katu-laghu-ruksha (Kashyapa's ruksha-ushna upachara for kapha signs); Kashyapa: vamana is the first line in Amlapitta when strength permits (KS.Khila.16/22-23); Charaka: vamana par excellence for kapha (Ca.Su.20/19) → bring: praseka/clearing bands, tongue photos, stool sink/float record, ama checklist score; ask whether deepana-pachana precedes any shodhana (AH.Su.13/28-29).
3. **Kantha daha rises with kantha shosha (dry throat), gala graha (lump), voice varying through the day, adhmana, vibandha, broken or late-onset sleep, chinta/bhaya** (fields `kantha_shosha`, `kantha_graha`, `svarabheda`, `post[i]_adhmana`, `vibandha`, `sleep_quality`, `manas_chinta`, `manas_bhaya`) → vata involvement — udana/prana vayu disturbed in kantha (AH.Su.12: udana seated in chest, moves in throat, governs speech, effort), vatadhika Amlapitta (MN.51/8) or vidagdha ajirna on a vishamagni base → regular meal times, warm, unctuous, madhura-amla-lavana in moderation (Ca.Su.20/13 vata line, but amla/lavana limited because of pitta), no vega dharana, no talking strain, early sleep; Kashyapa: snigdha upachara for vata signs → bring: graha/shosha/anidra record, vega dharana log, sleep timing; ask about anulomana of vata (mild, e.g. haritaki-class as in Hussain 2020 case) rather than strong purgation.
4. **Ama flare vs nirama flare** — ama flare: foul sour belching, heavy, sinking sticky stool, thick coat, klama, aruchi, coldness (AH.Su.13/23-24; sama pitta signs) → langhana until true hunger returns, warm water, pachana focus; do not expect shamana drugs to act until ama is digested (Kashyapa: drava aushadha will not digest in agnimandya, KS.Khila.16/22-23). Nirama flare: hot, bitter, light, good appetite, clean tongue → shamana with madhura-tikta-sheeta and ghrita-based measures as the vaidya directs → bring: which of the two the week matched (sama/nirama table 3.4).
5. **Sharad flare** (clear hot days after rains; or any sudden heat after cold-wet weeks) → accumulated pitta aggravates (Ca.Su.6/41; AH.Su.12) → Ca.Su.6/42-45: madhura-laghu-sheeta-satikta food only when hungry; tikta ghrita, virechana and raktamokshana are the seasonal measures for the vaidya's judgement; avoid dadhi, oils/fats, day-sleep, sun, easterly wind → bring: onset date relative to weather change.
6. **Night-time flare after a late or heavy meal** → adhyashana/night eating: channels are closed at night, apakva rasa thickens, ama adheres (Ca.Chi.15 commentary on 235-236); pitta time of night is its middle third (AH.Su.1/8), so late meals meet pitta peak → last meal early and laghu, three hours before bed; no dadhi at night; → bring: last-meal-to-bed gap vs night symptom chart.
7. **Morning hoarseness after dadhi (curd/cheese) at night, or after milk with salty/sour food** → abhishyandi + viruddha nidana (KS.Khila.16/3-6) → kapha-ama in kantha overnight, udana obstructed (svarabheda) → stop night dairy; takra (buttermilk) with pathya spices is the classical substitute if the vaidya agrees → bring: the dairy-vs-voice correlation from the log.
8. **Hoarseness/throat-clearing worst on waking, clears after warm water and a bowel movement** → kapha kala of morning (AH.Su.1/8) with mild ama; benign pattern; keep morning routine (ushna jala, timely mala visarjana) → bring only if clearing band ≥ 2 persists into the day.
9. **Flare with krodha/chinta days** → manasika nidana (Ghosh & Baghel; Baragi 2013); rajasika mind pattern (Ca.Sha.4/38) → Kashyapa: "free from greed, self-controlled, truthful — the disease subsides" (KS.Khila.16/49); mealtime calm, no eating while angry → bring: manas scores with symptom scores; ask about sattvavajaya measures.
10. **Flare after travel/change of place, wet-cold residence** → desha: anupa-like land favours Amlapitta (Kashyapa; KS.Khila.16/49) and kapha (AH.Su.1/23); loss of oka-satmya → keep home-satmya foods, warm-dry regimen → bring: desha note.
11. **Symptoms improve with fasting/light food but return with normal meals** → agnimandya with ama (Kashyapa samprapti) → deepana before pachana before shamana; do not increase quantity until jirna signs are reliable (AH.Su.8/55) → bring: A1-A9 agni answers.
12. **Burning eases with warm drinks but heaviness/phlegm worsens with cold drinks** (`warm_drink_response = eases`) → kapha-dominant; the reverse, `warm_drink_response = worsens-burning` → pitta-dominant — Kashyapa's three upacharas (snigdha / svadu-sheeta / ruksha-ushna) map onto these responses [T1 via T3].
13. **Loose stools with burning after purgative-type home remedies, or after strong triphala/castor** (`aushadha[j]_effect` includes `loose-stool` or `burning`, with `mala_form` = loose or watery) → mridu koshtha reacting (Ca.Si.1; koshtha review) → stop and tell your vaidya; mridu koshtha needs mridu virechana.
14. **Klama, aruchi, gaurava persisting though throat burning is low** (`klama` ≥ 1 and `aruchi` ≥ 1 and `gaurava_day` ≥ 2 while `kantha_daha` ≤ 1) → residual ama (AH.Su.13 sama-dosha lakshana) — not "recovery" yet; keep pathya; bring ama checklist.
15. **Voice worse with long speaking, better with rest, no phlegm** (`svarabheda` ≥ 2 on days when `vak_shrama` is `1-3h` or `over-3h`, with `kapha_quality = none`) → udana vayu strain (AH.Su.12) rather than urdhvaga (upward) movement of pitta; the `vak_shrama` field carries the talking load; discuss udana-sthapana measures with your vaidya.

---

## 9. Vaidya-visit preparation template (one page)

```
Name / age (vaya stage: madhya, pitta-dominant decade) / desha now (jangala- or anupa-like) / ritu at visit
PRAKRITI (self-questionnaire, section 1): V __ %  P __ %  K __ %  → guess: ____ (ekadoshaja / dwandvaja: ___-___ / sama)
   Manasa lean: sattvika / rajasika / tamasika.  Sattva bala: pravara / madhyama / avara.
   Sara noted: ____.  Samhanana: strong/medium/weak.  Satmya: tastes habitual ____; dairy __; tea/coffee __; climate of upbringing __.
   Aharashakti: eats small/medium/large; digests well/slow/irregular.  Vyayamashakti: low/medium/high.
AGNI now: vishama / tikshna / manda / sama (A1-A9).   KOSHTHA: krura / madhya / mridu (criteria 3.2).
AMA: checklist score __/10 (AH.Su.13/23-24); tongue coat __; stool sinks __ days/wk; sama vs nirama pitta: ____; sama kapha in throat: y/n.
VIKRITI TREND (14-item scale, 0-3 each): intake __ / last month __ / this month __.
   Top 3 lakshana trends (with 4-week direction ↑ → ↓):
   1. ______ (e.g., kantha daha 2→1)   2. ______ (praseka)   3. ______ (svarabheda)
   Dosha picture from weekly leans: Pitta __ wks, Kapha __ wks, Vata __ wks.  Night flares: __/28.  Worst time of day: ____.
NIDANA most frequent (from logs): aharaja ____, ____; viharaja ____; manasika ____.  Vega dharana events: __.
AUSHADHA: name / dose / anupana / kala — adherence __ % ; missed doses reasons; observed effects (log lines).
PATHYA adherence __ % ; hardest pathya: ____.  Apathya still present: ____.
SLEEP: mean last-meal-to-bed __ h; disturbed nights __.  VYAYAMA days __.
MANAS: mean krodha __ / chinta __ ; days with avyagrata ≥ 2: __ ; overall lean: prasanna / rajasika / tamasika.
VAK: days with long speaking (vak_shrama 1-3h or over-3h): __ ; warm-drink response most weeks: eases / no change / worsens burning.
PATTERNS (section 8 rules that fired): #__, #__.
QUESTIONS for the vaidya: 1) ____ 2) ____ 3) ____  (e.g., is this an ama phase — should pachana precede shamana? is my koshtha suited to sramsana/virechana? which anupana?)
```

**Field map — every slot above traces to a field or a named section, and nothing else may be added:**

| Template slot | Source |
|---|---|
| Name, age, vaya stage, desha now, ritu at visit | intake; `desha_note`; `ritu_felt` |
| PRAKRITI V/P/K %, label | section 1.3 steps 3-7 |
| Manasa lean; Sattva bala | section 1.4; section 4 Sattva row |
| Sara, Samhanana, Satmya, Aharashakti, Vyayamashakti | section 4 table rows of the same names |
| AGNI now | section 3.1, items A1-A9 |
| KOSHTHA | section 3.2 criteria |
| AMA checklist __/10 | section 3.3, the ten sama-dosha items |
| tongue coat; stool sinks __ days/wk | `jihva_coat`; `mala_float` |
| sama vs nirama pitta; sama kapha in throat | section 3.4; `kapha_quality` |
| VIKRITI TREND, 14-item scale | section 2.3, re-scored monthly per 6.3 |
| Top 3 lakshana trends | section 6.2 kantha and post-meal curves |
| Dosha picture from weekly leans | section 6.2 dosha lean |
| Night flares __/28 | `night_symptoms` other than `none` |
| Worst time of day | `kantha_worst_time`, most frequent value |
| NIDANA most frequent; vega dharana events | `apathya[j]_tag` by `apathya[j]_category`; total `vega[j]_count` |
| AUSHADHA name/dose/anupana/kala, adherence, missed reasons, observed effects | `aushadha[j]_*`, including `aushadha[j]_effect` |
| PATHYA adherence; hardest pathya; apathya still present | `pathya_ticks`; `apathya[j]_item` |
| SLEEP mean last-meal-to-bed; disturbed nights | `last_meal_to_bed_h`; `sleep_quality` |
| VYAYAMA days | days with `vyayama_minutes` > 0 |
| MANAS line | `manas_krodha`, `manas_chinta`, `manas_avyagrata`, `manas_overall` |
| VAK line | `vak_shrama`; `warm_drink_response` |
| PATTERNS | section 8 rule numbers |
| QUESTIONS | Q87 answers and the patient's own notes |

---

## 10. Glossary (Sanskrit terms used here)

- Abhishyandi — foods that clog channels (e.g., curd). Abhyavaharana shakti — capacity to take in food. Adhmana — bloating. Adhyashana — eating before the previous meal is digested. Agni — digestive/metabolic fire; jatharagni its central form. Agnimandya — weak agni. Ajirna — indigestion (ama, vidagdha, vishtabdha, rasashesha types). Akriti — general appearance. Alasya — lethargy. Ama — undigested, raw product of weak agni; sama = with ama, nirama = without. Amashaya — stomach region (seat of kapha and pachaka pitta). Amla — sour. Amlapitta — pitta that has become sour; urdhvaga = moving upward, adhoga = downward. Amlodgara — sour belching. Angula — finger-breadth unit. Anidra — sleeplessness. Anila-mudhata — vata not moving. Anupa — marshy/wet region. Anupana — vehicle taken with medicine. Anulomana — gentle downward movement of vata. Apakti — non-digestion. Apathya — unwholesome. Aruchi — lack of relish. Ashtavidha pariksha — eightfold examination. Aushadha — medicine. Avara — inferior grade. Avarana — covering/obstruction of one dosha by another. Avipaka — indigestion.
- Bala — strength (sahaja, kalaja, yuktikrita). Bhrama — giddiness. Brahma-muhurta — pre-dawn period.
- Chaya-prakopa-prashama — accumulation, aggravation, subsiding of doshas by season. Chhardi — vomiting. Chinta — worry.
- Daha — burning (hrit = chest, kantha = throat, kukshi = flank/abdomen, ura = chest). Dadhi — curd. Dashavidha pariksha — tenfold examination. Deepana — kindling agni. Desha — place/region; also the patient as the "field". Dhatu — tissue. Dosha — vata, pitta, kapha. Drava — liquid. Drik — eyes. Dwandvaja — two-dosha (constitution).
- Ekadoshaja — single-dosha. Ekagrata — one-pointedness.
- Gala graha — throat tightness/lump. Gala kandu — throat itch. Gaurava — heaviness. Ghrita — ghee. Guna — quality. Guru — heavy.
- Hikka — hiccup. Hrillasa — nausea.
- Jangala — dry region. Jarana shakti — power of digestion. Jihva — tongue; lepa = coating. Jirna — digested.
- Kala — time/season; also dose timing (aushadha-sevana-kala). Kandu — itch. Kantha — throat. Kasa — cough. Katu — pungent. Klama — tiredness without exertion. Koshtha — bowel nature (krura/madhya/mridu). Krodha — anger. Kshudha — hunger.
- Laghu — light. Langhana — lightening therapy/fasting. Lavana — salty. Lepa — coating.
- Madhura — sweet. Mala — stool (also wastes in general). Manasa prakriti — mental constitution (sattva/rajas/tamas). Matra — proper quantity. Mutra — urine.
- Nadi — pulse. Nidana — cause. Nidra — sleep. Nishthivana — spitting.
- Oka-satmya — suitability acquired by habit.
- Pachana — digesting ama. Pakva — ripe/digested. Pathya — wholesome. Pishtanna — flour-based foods. Pitta-varna — yellow (of pitta). Prakriti — constitution. Pramana — measurement. Praseka — excess salivation. Pravara — superior grade.
- Rajas — activity/agitation guna of mind. Rasa — taste (six); also the first tissue. Ritu — season. Ruksha — dry.
- Sama — (1) balanced, (2) with ama (context decides). Samhanana — compactness. Samprapti — pathogenesis. Sara — tissue excellence. Satmya — what suits by habit. Sattva — mind; mental strength. Shabda — voice/speech. Shamana — pacifying treatment. Sharad — autumn (pitta season). Shodhana — cleansing therapy (vamana, virechana). Shosha — dryness. Shula — pain. Snigdha — unctuous. Sramsana — mild purgation. Srotorodha — channel obstruction. Svarabheda — hoarseness. Sveda — sweat.
- Tamas — inertia guna. Tandra — drowsiness. Tikshna — sharp. Tikta — bitter. Trishna — thirst.
- Udana vayu — the vata sub-type seated in chest, moving in throat, governing speech and effort. Udgara — belching. Ushahpana — morning water. Ushna — hot. Utklesha — nausea.
- Avyagrata — loss of one-pointedness; the daily log records this (not ekagrata) so that 0 is always the absent end of the scale.
- Galapaka — inflammation/suppuration of the throat; a pitta nanatmaja vikara (Ca.Su.20/14).
- Kanthoddhvamsa — scraping or hoarseness of the throat; the vata nanatmaja vikara (Ca.Su.20/11) that the carakasamhitaonline edition glosses "hoarseness of voice".
- Vak shrama — strain of the voice from long talking, shouting or singing.
- Vaidya — Ayurvedic physician. Vamana — therapeutic emesis. Vata-kaphadhika — vata-kapha-predominant. Vaya — age. Vega dharana — suppressing natural urges. Vikriti — present imbalance/disease. Virechana — therapeutic purgation. Viruddha — incompatible. Vishama — irregular. Vyayama — exercise; ardha-shakti = half capacity.

---

## Validation log 2026-09-18

Independent validation pass over this file against CORPUS-RULES.md, with a usability audit against a real check-in run. Surgical edits only; no section was deleted.

### 1. Content-rule audit (Ayurveda-only)

Searched the whole file for RSI, GERD-Q, HADS, BMI, Western vitals, drug classes, endoscopy, pH, "consult a doctor/physician" and similar.

- **No Western instrument or diagnosis was present in the body of the file.** The only escalation phrase anywhere is "discuss with your vaidya", used correctly.
- Removed the two Western-framing words found: section 8 rule 15 read "rather than reflux of pitta" → now "rather than urdhvaga (upward) movement of pitta"; grading item 10 read "Gala graha / globus" → now "Gala graha (a lump or tightness in the throat)", *globus* being a Western clinical term.
- Re-worded three sources-register notes so they record an exclusion rather than repeating the excluded content: S23 (the Khapre paper's non-Ayurvedic diagnostic criterion), S26 (the Akanksha paper's epigastric-tenderness and measured-regurgitate gradings), S17 (the CCRAS manual's own body-mass predictor and its blood-pressure SOP, neither of which is imported here).
- **Risk flagged for future editors:** the CCRAS PAS manual, the file's main T2 prakriti source, itself captures "Built" through a body-mass measure and carries a blood-pressure procedure as its section 5. Only the classical predictors and their verse references may be taken from it. This is now stated in the S17 note.

### 2. Usability audit

(a) **Prakriti items.** All 40 items are now answerable by a lay person in plain English, each stem carrying its Sanskrit anchor. Fixed: item 35 offered the identical option "Poor" for both V and P and could not be answered — rewritten so each column describes a different discomfort; item 33 (courage) had overlapping P and K options — rewritten; item 12 (sweating) had V "Scanty" and K "Moderate, little", nearly the same — rewritten; item 2 (height) was a bare phrase — rewritten as a question against the patient's own family; item 23 (tastes liked) gave kapha "pungent, bitter, astringent", which is kapha's pathya, not its natural liking — corrected to the Sushruta reading and flagged [variant]; item 27 is marked optional and the scoring now handles a 39-item denominator. Fourteen further stems gained an explicit English question and Sanskrit gloss (items 4, 5, 6, 10, 14, 15, 17, 20, 21, 22, 24, 25, 26, 28, 29, 30, 31, 34, 36, 37, 38, 39, 40).
(b) **Scoring rule.** Section 1.3 was two sentences with an undefined denominator, no tie rule and a vague "about 28-38 %". Rewritten as eight deterministic steps with a closed range, an explicit denominator, three tie-breaks and a rule against re-labelling from a flare. Section 1.3a now works three examples (all 40 answered; item 27 skipped; a tie) with the arithmetic shown. The original example was re-checked and its arithmetic was correct; it is kept as Example A.
(c) **Daily log schema.** Section 6.1 previously bundled up to nine fields into one table row and left several without allowed values. Rewritten as one row per field with type and allowed values, 90 fields in all. Added fields that the interpretation rules and the weekly summary already referred to but the schema did not define: `kantha_shosha`, `kapha_quality`, `kasa_type`, `warm_drink_response`, `vak_shrama`, `trishna`, `klama`, `aruchi`, `tandra`, `gaurava_day`, `sveda`, `sheeta_abhilasha`, `drik`, `sparsha_warmth`, `sparsha_skin`, `aushadha[j]_effect`, `vibandha` (derived). Section 6.1a rewritten to use the field names exactly.
(d) **Question bank and rotation.** IDs Q1-Q87 declared permanent and never reused; two untagged entries fixed (Q83 was "(nidana)", Q87 was "(free)"); a `VQ` tag added to the legend for free text to the vaidya. Section 7.1 was a list of hints whose triggers referred to yes/no questions as though they carried 0-3 scores, whose sets used ranges, and whose 12-question cap could be exceeded with no rule for what to drop. Rewritten as ten numbered steps that read only daily-log fields, list every question ID in full, define unskippable questions, define the trim order, define a least-recently-asked rotation for spare room, and close with a worked run.
(e) **Grading scale.** A binding scale convention is now stated once in section 2.3 (0 absent, 1 slight, 2 daily/prolonged, 3 severe) and applies to every 0-3 field in the file. Two items carried stray grade-4 parentheticals inside a 0-3 scale (items 1 and 2) — these now say explicitly that a source grade of 4 folds into 3. Item 6 (aruchi) grade 0 now reads "aruchi absent". One genuine inversion was found and fixed: the daily manas block scored `ekagrata` (focus) 0-3, so 0 meant "worst" for that one field; it is replaced by `manas_avyagrata` (loss of focus), and question Q56 is re-worded to match.
(f) **Dangling references.** Section 8 rules 1, 2, 3, 12, 13, 14 and 15 and the section 9 template named things that were not fields: hot palms, sticky phlegm quality, dry throat, warm-drink response, medicine effect, aruchi, klama, talking hours. Each now names a field that exists in table 6.1, and section 9 gains a field map in which every template slot traces to a field or a named section.

### 3. Citation spot-check — 31 claims checked

**Confirmed (upgraded to [verified x2] with the second, primary citation):**
1-8. Ca.Vi.8/96, 8/97 and 8/98 read verbatim in the carakasamhitaonline critical edition: the kapha, pitta and vata guna lists and the derived traits underlying prakriti items 1, 3, 5, 6, 8, 10, 11, 12, 13, 15, 17, 20, 22, 24, 25, 26, 27, 28, 29, 31, 32, 33, 34, 35, 37 — every phrase quoted in those rows (ruksha-apachita-alpa-sharira; kshama-sanna-sakta-jarjara-svara; jagaruka; bahu-kandara-sira-pratana; satata-sandhi-shabda; sphutita-anga; parusha-kesha-shmashru-roma-nakha; shrutagrahi and alpa-smriti; shighra-trasa-raga-viraga; prabhuta-vipluva-anga-tila-pidaka; kshipra-vali-palita-khalitya; tikshna-parakrama; prabhuta-ashana-pana; klesha-asahishnava; dandashuka; prabhuta-puti-gandha; alpa-shukra-vyavaya-apatya; prasanna-snigdha-varna-svara; sushlishta-sara-sandhi-bandhana) is present in the verse as cited.
9. Ca.Vi.8/95 — the five prakriti classes, exact.
10-17. Ca.Vi.8/101, 116, 117, 118, 119, 120, 121, 123 — all eight Dashavidha rows in section 4, verbatim (see the verification note there).
18. Ca.Su.20/17 — the twenty kapha nanatmaja vikara read in full; kanthopalepa, mukhasrava, shleshmodgirana and shitagnita, previously [single-source], are confirmed.
19. Ca.Su.20/14 — the forty pitta nanatmaja vikara read in full; daha, vidaha, atisveda, tiktasyata, amlaka, trishnadhikya confirmed.
20. Ca.Su.20/12 — sanga, graha, stambha, shosha, shula as vata karma, confirming the [constructed] reading behind grading item 10 (gala graha).
21-27. Su.Sha.4 read directly for the first time (see gap closure): prakriti fixed at conception and sevenfold (4/57-58); prakriti never changes (4/70-71); and the vataja, pittaja and kaphaja descriptions confirming prakriti items 5, 6, 7, 10, 12, 13, 21, 23, 28, 30, 33, 35, 36, 37.
28. CCRAS SOP 1.3 APPEARANCE — "Bahu kandara-sira-pratana, Prominent tendons and veins (Ref: Charak Samhita Vimana Sthana 8/98)", an exact match to prakriti item 7.
29. CCRAS SOP 3.2 COMPREHENSION (Grahya Shakti) — shrutagrahi / chiragrahi, citing Ca.Vi.8/98: exact match to item 28.
30. CCRAS SOP 2.4 THIRST (PIPASA) — "Prabhuta pana", "Teekshna trishna": exact match to item 17.
31. CCRAS SOP 4.6 — "Vineeta, Polite/humble (Ref: Ashtanga Hridaya Sharira Sthana 3/99)": exact match to item 39, and confirms the AH.Sha.3/99 verse number. CCRAS SOP 1.1 BUILT and 1.2 HEIGHT also confirmed, including the 80-angula short cut-off. Grading item 6 (aruchi) confirmed verbatim against the cached Akanksha JAIMS 2024 PDF.

**Corrected (before → after):**
- Ca.Su.20/11 was cited for *svarabheda*. The word is not among the eighty vata nanatmaja vikara. → The term actually in the verse is *kanthoddhvamsa*, glossed "hoarseness of voice" in that edition; bare *shula* is likewise not in 20/11 but belongs to the vata karma of 20/12. Both corrections are stated in the vriddhi table.
- Ca.Su.20/14 was cited for "kantha-paka". → The term in the verse is *galapaka*.
- Item 30 (decisions) was sourced "Su.Sha.4/65 via CCRAS SOP 3.1". → Su.Sha.4/65 is, in the numbering CCRAS uses, the *thin build* predictor, and in Bhishagratna's numbering 65-68 is the kaphaja section. Re-sourced to Ca.Su.20/11 anavasthitachittatva + CCRAS SOP 3.1 (Anavasthita atma / Avyavasthita mati) + Su.Sha.4/59-60 "his mind is never steady".
- Item 23 (tastes liked) gave kapha katu-tikta-kashaya. → Corrected to sweet/rich, per Su.Sha.4/65-68 "fond of sweet tastes", and flagged [variant] against the AH.Sha.3/102 reading; katu-tikta-kashaya is kapha's pathya, not its natural liking.
- Item 15 cited "CCRAS SOP 2.x". → Placeholder withdrawn and marked [unverified 2026-09-18]; the row now stands on Ca.Vi.8/96-98 read verbatim.
- Item 36 cited "CCRAS SOP 4.5" for friendship. → Not confirmable: friendship sits in the CCRAS *psychological* group, not the behavioural one, and that page is omitted from the public preview. Marked [unverified 2026-09-18]; the row now stands on AH.Sha.3/86,99 and Su.Sha.4.
- Su.Sha.4/62-77 given as a plain verse range. → Flagged [variant on verse numbers]: Bhishagratna's English numbers the same matter 57-71, about five verses apart from the Sanskrit editions and from CCRAS.

**Unconfirmed after a genuine attempt, now marked [unverified 2026-09-18]:**
- AH.Su.13/23-26 verse numbers for the ama definition and the sama-dosha lakshana list. The *content* remains verified x2; only the numbering is the translator's. wisdomlib returned HTTP 403 and niimh.nic.in refused the connection; the session's web-search budget was already spent.
- The sama/nirama pitta, kapha and vata lakshana lists (section 3.4). Content verified x2; **no verse number should be cited for them**, and the section now says so.
- Ca.Vi.8/122 exact year boundaries; Ca.Vi.4/7; AH.Su.13/37-41 aushadha-sevana-kala — each unchanged from the original draft and still [single-source].

### 4. Gap closure

| Gap | Outcome |
|---|---|
| Sushruta Sharira 4 primary text | **Closed.** Read directly from the Bhishagratna translation held in the session scratchpad — the full prakriti passage, 4/57-71 in that numbering. Seven prakriti rows upgraded to [verified x2] on it and the numbering variance documented. |
| CCRAS prakriti assessment item list | **Partly closed.** The manual's structure is confirmed from the public preview: four trait groups (physical, physiological, psychological, behavioural), 91 retained predictors from 500 candidates, kappa > 0.41 for retention, Likert capture for most items. Seven numbered predictors were read verbatim (1.1 Built, 1.2 Height, 1.3 Appearance, 2.4 Thirst, 3.1 Indecisiveness, 3.2 Comprehension, 4.6 Vineeta) and matched against the questionnaire. The remaining 84 predictors sit on pages omitted from the preview and require CCRAS training; **still open.** |
| sama/nirama verse numbers | **Open.** One attempt each at wisdomlib (HTTP 403) and niimh.nic.in (connection refused); web-search budget exhausted. The lists are now used without a verse number. |
| Prakriti Parikshan Abhiyan questionnaire | **Open.** One attempt at the PIB release (HTTP 403). The questionnaire text is not public in any case. |

### 5. Companion-file note

Per CORPUS-RULES.md, `00-INDEX.md` should record this file's new sections (the scale convention in 2.3, the rewritten 6.1 schema, the rewritten 7.1 rotation procedure and this validation log). Sibling files were being edited concurrently, so no write was made outside this file; the index update is left to whoever closes the batch.

---

## 11. Sources register (accessed 2026-09-17; validation pass 2026-09-18)

| # | Tier | Citation | URL | Authenticity note |
|---|---|---|---|---|
| S1 | T1 | Charaka Samhita, Vimana Sthana 8 (Rogabhishagjitiya Vimana), verses 92-123 — Sanskrit, IAST and English, Charak Samhita Research, Training and Skill Development Centre (carakasamhitaonline) | https://www.carakasamhitaonline.com/index.php/Rogabhishagjitiya_Vimana | Institutional online critical edition with verse numbers; raw wikitext fetched and quoted verbatim for 8/96-98, 101, 103-123 |
| S2 | T1 | Charaka Samhita, Chikitsa Sthana 15 (Grahani Chikitsa), verses 9-11, 50-51, 94, 235-236 | https://www.carakasamhitaonline.com/index.php/Grahani_Chikitsa | Same edition; verse 94 (sama mala sinks) quoted verbatim |
| S3 | T1 | Charaka Samhita, Sutra Sthana 18 (Trishothiya), verses 48-53 | https://www.carakasamhitaonline.com/index.php/Trishothiya_Adhyaya | Same edition; the page's commentary also reproduces AH.Su.11/5-7 vriddhi list |
| S4 | T1 | Charaka Samhita, Sharira Sthana 4 (Mahatigarbhavakranti), verses 36-40 (manasa prakriti) | https://www.carakasamhitaonline.com/index.php/Mahatigarbhavakranti_Sharira | Same edition; 16 sub-types quoted |
| S5 | T1 | Charaka Samhita, Siddhi Sthana 1 (Kalpana Siddhi), koshtha and snehana/virechana guidance | https://www.carakasamhitaonline.com/index.php/Kalpana_Siddhi | Same edition; koshtha durations 3/5/7 days |
| S6 | T1 | Charaka Samhita, Sutra 5 (Matrashiteeya) 3-8; Sutra 6 (Tasyashiteeya) 33-45; Sutra 7 (Naveganadharaniya) 3-4, 18 | https://www.carakasamhitaonline.com/index.php/Matrashiteeya_Adhyaya ; .../Tasyashiteeya_Adhyaya ; .../Naveganadharaniya_Adhyaya | Same edition; matra rule, sharad regimen, udgara vega dharana |
| S7 | T1 | Charaka Samhita, Sutra 20 (Maharoga) — nanatmaja vikara lists and dosha treatment lines, English summary | https://www.easyayurveda.com/qualities-diseases-treatment-of-vata-pitta-and-kapha/ | Practitioner translation of the classical chapter (Dr J.V. Hebbar); used for verse-level lists; items not shown in the fetched summary are marked single-source |
| S8 | T1 | Ashtanga Hridaya, Sharira 3 (Angavibhaga), verses 84-104 prakriti — English translation | https://www.easyayurveda.com/2024/02/20/angavibhaga-shareeram-different-parts-of-body-ashtanga-hridaya-shareerasthana-3/ | Practitioner translation following Murthy's edition numbering; full trait lists fetched |
| S9 | T1 | Ashtanga Hridaya, Sutra 11 (Doshadi vijnaniya), verses 5-8, 15-16 | https://www.easyayurveda.com/2013/04/11/tridosha-in-ayurveda-complete-details-astanga-hruday-sutrasthan-11/ | Same translator; vriddhi/kshaya lists fetched |
| S10 | T1 | Ashtanga Hridaya, Sutra 12 (Doshabhediya) — vata sub-types (udana, samana), seasonal chaya-prakopa | https://www.easyayurveda.com/2013/04/16/dosha-types-increase-and-decrease/ | Same translator |
| S11 | T1 | Ashtanga Hridaya, Sutra 13 (Doshopakramaniya), verses 23-29 — ama, sama-dosha lakshana, treatment order | https://www.easyayurveda.com/2013/04/17/treatment-for-dosha-imbalance-ama-ashtanga-sutrasthana-13/ | Same translator; Sanskrit of 23-24 checked against wisdomlib chapter listing via search |
| S12 | T1 | Ashtanga Hridaya, Sutra 1 verses 8-10, 23 (agni, koshtha, dosha-kala, prakriti rank, desha) | https://www.easyayurveda.com/2012/08/31/ashtanga-hrudaya-sutra-sthana-chapter-1-basic-principles-of-ayurveda/ | Same translator |
| S13 | T1 | Ashtanga Hridaya, Sutra 8 (Matrashitiya) verses 2, 23-31, 46, 55 (ajirna types, matra, jirna lakshana) | https://www.easyayurveda.com/2013/04/03/ashtanga-hrudayam-sutrasthana-8th-chapter/ | Same translator |
| S14 | T1 | Madhava Nidana 51 (Amlapitta Nidanam) — English | https://www.easyayurveda.com/2023/04/14/madhava-amlapitta-nidanam/ | Practitioner translation; general/urdhvaga/adhoga lakshanas |
| S15 | T1 via T3 | Kuriakose E, Nair LP, Korede R, Mund J. Concept of Amlapitta in Kashyapa Samhita — an appraisal. Int J Ayurvedic Medicine 2016;7(1):1-5 (cites KS Khila 16/3-49, Hemaraja Sharma ed., Chaukhamba 2008) | http://ijam.co.in (PDF cached locally from sibling fetch) | Peer-reviewed review with verse-level citations to the Kashyapa text; nidana table and pathya reproduced |
| S16 | T1 via T3 | Yogaratnakara Ashtavidha pariksha as summarised in Dudhe VP, Patil UN. Ashtavidha Pariksha — an ancient useful diagnostic tool. Int J Pharm Res Appl 2025;10(5):72-75 (cites Yogaratnakara, Tripathi ed., Chaukhamba 2007) | https://ijprajournal.com/issue_dcp/Ashtavidha%20Pariksha%20An%20Ancient%20Useful%20Diagnostic%20Tool.pdf | Low-impact journal but gives page-level Yogaratnakara citations; dosha-wise readings used |
| S17 | T2 | CCRAS. Manual of Standard Operative Procedures for Prakriti Assessment (AYUR-Prakriti Web Portal), 2nd ed. 2020, ISBN 978-93-83864-21-8 (preview PDF) | https://ccras.nic.in/wp-content/uploads/2024/07/15032023_AYUR-PRAKRITI-WEB-PORTAL-Manual.pdf | Official CCRAS document; each predictor carries classical references (Ca.Vi.8, Su.Sha.4, AH.Sha.3, AS.Sha.8, Sharangadhara); preview omits pages; training required for the full scale. Audit note 2026-09-18: the preview's own 'Built' predictor is captured by a body-mass measure and the manual carries a blood-pressure SOP as section 5 - both are non-Ayurvedic instruments and are deliberately NOT imported into this file; only the classical predictors and their verse references are used |
| S18 | T2 | Press Information Bureau, Government of India. "Desh Ka Prakriti Parikshan Abhiyan" (PRID 2241123) | https://www.pib.gov.in/PressReleasePage.aspx?PRID=2241123 | Official release; app logic by CSIR-IGIB; 1,40,69,556 assessed; questionnaire text itself not public |
| S19 | T3 | Bharti, Ota S, Singh R, Sharma L, et al. Development of a standardized assessment scale for assessing Prakriti. AYU 2022;43(4) | https://journals.lww.com/aayu/fulltext/2022/43040/development_of_a_standardized_assessment_scale_for.1.aspx | Full text paywalled (HTTP 402); figures (91 predictors, alpha 0.92/0.91/0.90) taken from the indexed abstract via search |
| S20 | T3 | Bhargav H, Chikkanna U, Holla B, et al. The Brief Prakriti Inventory: latent structure, reliability, and validity. Wellcome Open Research 2025 (PMC12780516) | https://www.ebi.ac.uk/europepmc/webservices/rest/PMC12780516/fullTextXML | Open access full text; 21 items and classification rule extracted |
| S21 | T3 | Venkatesh A, Johansson L, Sivanandan PV, et al. Prakriti in Ayurveda: a critical review of Prakriti assessment tools. Front Med 2025;12:1656249 (PMC12631390) | https://www.ebi.ac.uk/europepmc/webservices/rest/PMC12631390/fullTextXML | Open access; 64 tools reviewed; CCRAS-PAS best-scoring |
| S22 | T3 | Ghosh K, Baghel MS. A clinical study to evaluate the role of Doshik predominance in the management of Amlapitta. AYU 2017;38(1-2):15-23 (PMC5954255) | https://www.ebi.ac.uk/europepmc/webservices/rest/PMC5954255/fullTextXML | Open access (IPGT&RA Jamnagar); ASRS structure, dosha-predominance criteria, nidana list |
| S23 | T3 | Khapre K, Nautiyal VN, Jagzape MJ, Saxena VS. Effectiveness of Ayurveda treatment in Urdhwaga Amlapitta: a clinical evaluation. J Ayurveda Integr Med 2021;12(1):87-92 (PMC8039346) | https://www.ebi.ac.uk/europepmc/webservices/rest/PMC8039346/fullTextXML | Open access; 8-symptom 0-3 grading quoted; the paper's non-Ayurvedic diagnostic criterion was excluded per the corpus content rule and is not reproduced here |
| S24 | T3 | Baragi UC, Vyas MK. Evaluation of diet and life style in the etiopathogenesis of Urdhwaga Amlapitta. AYU 2013;34(4):352-355 (PMC3968695); and Baragi UC, Vyas MK. Dashanga Kwatha Ghana Vati in Urdhwaga Amlapitta. AYU 2012;33(2):219-223 (PMC3611627) | https://www.ebi.ac.uk/europepmc/webservices/rest/PMC3968695/fullTextXML ; .../PMC3611627/fullTextXML | Open access; nidana frequencies, prakriti/koshtha distribution, 0-3 severity scoring |
| S25 | T3 | Sharma R, Kour H, Math M. Clinical evaluation of Bhunimbadi Kadha in the management of Amlapitta. AYUSHDHARA 2025;12(5):1-7 | https://ayushdhara.in (PDF cached locally) | Peer-reviewed; 6-item 0-3 grading (amlodgara by sound, daha, gaurava, utklesha, avipaka, aruchi) |
| S26 | T3 | Akanksha, Prajapati ML, Sason R. Ayurvedic management of Amalpitta — a case report. J Ayurveda Integrated Med Sci 2024;9(8) | https://jaims.in (PDF cached locally) | Same 0-3 scale as S25; the paper's additional physical-examination gradings (epigastric tenderness, measured regurgitate volume) were excluded per the corpus content rule and are not reproduced here |
| S27 | T3 | [IJHM] Amlapitta: an Ayurvedic perspective — a case study. Int J Herbal Medicine 2025;13(4):192-195 | https://www.florajournal.com (PDF cached locally) | Reproduces the 0-4 Jamnagar-style grading for avipaka, klama, utklesha, amla udgara, gaurava, daha, aruchi |
| S28 | T3 | Patoladi Kwath case, Int J Ayurvedic Medicine 2023;14(1):297-301; Hussain T, Kumar P. Ayurvedic management of Ubhayaga Amlapitta. Int J Res Ayurveda Pharm 2020;11(6) | http://ijam.co.in ; https://ijrap.net (PDFs cached locally) | 0-5 daha/amlodgara variant; 0-3 burning/pain/sour-belching variant |
| S29 | T3 | Kuttikrishnan M, Sridhar R, Varghese E. Jatharagni and Prakriti of young Indian adult population. J Ayurveda Integr Med 2022;13(1):100438 (PMC9034458) | https://www.ebi.ac.uk/europepmc/webservices/rest/PMC9034458/fullTextXML | Open access; JAQ subscale structure and prakriti-agni associations; items not published in text |
| S30 | T3 | Singh A, Singh G, Patwardhan K, Gehlot S. Development, validation and verification of a self-assessment tool to estimate Agnibala. J Evid Based Complementary Altern Med 2017;22(1):134-140 | https://doi.org/10.1177/2156587216656117 | Full text blocked (HTTP 403); cited from S29 and the JMIR 2026 protocol abstract only |
| S31 | T3 | Wagh S, Joshi V, Raut AA, et al. Systemic Ama assessment and clinical disease activity in Amavata. J Ayurveda Integr Med 2026;17(4):101317 (PMC13420488); and Tongue coating, severity of Ama and disease activity. JAIM 2026;17(3):101315 (PMC13199814) | https://www.ebi.ac.uk/europepmc/webservices/rest/PMC13420488/fullTextXML ; .../PMC13199814/fullTextXML | Open access; Ama Assessment Instrument and tongue-coating sextant grading |
| S32 | T3 | Priyadarshini AM. Koshtha Pareeksha (teaching review, RKM Ayurvedic Medical College, Dept. Kayachikitsa), citing Charaka, Sushruta, AH and Patil V. et al. on agni-koshtha assessment | https://www.rkmamc.com/wp-content/uploads/2020/03/KOSHTA-PAREEKSHA.pdf | Departmental teaching PDF, not peer-reviewed; used for practical criteria and cross-checked with S5 |
| S33 | T3 | Ayurved Bharati. Roga Nidan chapter 10: Assessment of Ama (sama/nirama vata, pitta, kapha, purisha lakshanas) | https://ayurvedbharati.org/36829/roga-nidan-chapter-10-assessment-of-ama | Educational site; attributes verses to AH.Su.13 without full verse numbers — flagged [variant] |
| S34 | T4 | Hebbar JV. Pitta associated with Ama — symptoms and treatment (sama/nirama pitta) | https://www.easyayurveda.com/2018/08/30/ama-sama-nirama-pitta/ | Practitioner article; no verse citation; used only to corroborate S33 |
| S35 | T4 | Banyan Botanicals Dosha Quiz landing page; Ayurvedic Institute (Dr Vasant Lad) constitution guidelines | https://www.banyanbotanicals.com/pages/dosha-quiz ; https://www.ayurveda.com | Quiz items not retrievable (interactive / HTTP 403); not used for any claim |
| S36 | T3 | Dudhe VP & Patil UN (S16); Randive P, Mahajan S. Role of Ashtavidha Pariksha (IJARESM 2022) as cited therein | see S16 | Secondary confirmation of Yogaratnakara readings |

Gaps declared (revised 2026-09-18):
- **Closed:** Sushruta Sharira 4 was read directly on 2026-09-18 (Bhishagratna English, full prakriti passage). Sushruta attributions no longer rest on the CCRAS manual. The verse numbering differs between that translation (57-71) and the Sanskrit editions and CCRAS (62-77) and is flagged [variant] wherever it is cited.
- **Partly closed:** the CCRAS PAS structure and seven numbered predictors (1.1, 1.2, 1.3, 2.4, 3.1, 3.2, 4.6) are confirmed from the public preview; the remaining predictors and the scoring cut-offs are on omitted pages and are training-restricted.
- **Still open:** the Prakriti Parikshan Abhiyan questionnaire text is not public (PIB page returned HTTP 403 on 2026-09-18). The sama/nirama vata-pitta-kapha verse numbers remain unconfirmed after attempts at wisdomlib (HTTP 403) and niimh.nic.in (connection refused) — the lists are used without a verse number. AH.Su.13/23-26 verse numbers are the translator's, not read off a critical edition. Ca.Vi.8/122 year boundaries, Ca.Vi.4/7 and AH.Su.13/37-41 remain single-source. Throat-specific grading items (2.3 #9-14) are [constructed], because no Amlapitta study grades them. Dr Lad and Banyan quiz items could not be retrieved.
- **Instruments deliberately excluded** under the corpus content rule, and not to be re-imported: the CCRAS manual's body-mass predictor and blood-pressure SOP; the Khapre 2021 non-Ayurvedic diagnostic criterion; the Akanksha 2024 physical-examination gradings.
