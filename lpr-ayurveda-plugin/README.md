# LPR Ayurveda Companion (Claude Code plugin)

Ayurveda-only companion for LPR (laryngopharyngeal reflux), understood as Amlapitta / Urdhvaga Amlapitta with kantha (throat) involvement. No Western medicine anywhere: the corpus, the answers, and the journal stay inside Ayurvedic literature and practice. The owner has a vaidya; the plugin keeps knowledge, records, and questions ready so the vaidya's limited time counts.

Visual guide: `../docs/guide.html` — open it in any browser.

## Layout
```
C:\temp\lpr\
  .claude-plugin\marketplace.json     local marketplace "lpr-local"
  lpr-ayurveda-plugin\                this plugin
    corpus\                           curated Ayurvedic knowledge (00-INDEX.md, CORPUS-RULES.md, 01..07)
    skills\                           lpr-ayurveda (core), lpr-checkin, lpr-intake, lpr-vaidya-prep, lpr-research
    hooks\hooks.json                  SessionStart nudge (once per day)
    scripts\                          session-start.js, daily-task.ps1, install/uninstall-scheduler.ps1
  profile\                            your personal data (never inside the plugin)
```

## Install (already done on this machine)
```
claude plugin marketplace add C:\temp\lpr
claude plugin install lpr-ayurveda@lpr-local
```
Installing copies the plugin into `%USERPROFILE%\.claude\plugins\cache\lpr-local\lpr-ayurveda\<version>\`;
sessions load that copy, not this folder. After editing files here, refresh the copy and reload:
```
claude plugin marketplace update lpr-local
claude plugin update lpr-ayurveda
```
then `/reload-plugins` in a session. For live editing without the copy, start the session with
`claude --plugin-dir C:\temp\lpr\lpr-ayurveda-plugin` (this is how `daily-task.ps1` runs it).

## Daily check-in
1. SessionStart hook: when you open any Claude Code session and no check-in has been recorded today, Claude offers the check-in once, in one sentence. Decline and it stays quiet until tomorrow.
2. Windows Task Scheduler: `scripts\install-scheduler.ps1` registers "LPR Ayurveda daily check-in" (default 07:30). It runs Claude headless to write the day's questions into `profile\journal\YYYY-MM-DD.md` and shows a toast. Answer in the file or with `/lpr-ayurveda:lpr-checkin`.
```
powershell -NoProfile -ExecutionPolicy Bypass -File C:\temp\lpr\lpr-ayurveda-plugin\scripts\install-scheduler.ps1 -At "07:30"
```

## Skills
| Skill | Invoke | Purpose |
|---|---|---|
| lpr-ayurveda | automatic, or `/lpr-ayurveda:lpr-ayurveda <question>` | Q&A from the corpus, personalised by your profile; researches gaps; records facts about you |
| lpr-intake | `/lpr-ayurveda:lpr-intake [part]` | first-time profile: prakriti, vikriti baseline, agni/koshtha, vaidya plan, history |
| lpr-checkin | `/lpr-ayurveda:lpr-checkin` | daily 3-5 questions, journal entry, short reflection |
| lpr-vaidya-prep | `/lpr-ayurveda:lpr-vaidya-prep prep` or `after` | one-page visit summary; record the vaidya's instructions afterwards |
| lpr-research | `/lpr-ayurveda:lpr-research <topic>` | tiered Ayurvedic research written into the corpus |

## Moving the profile
Set `LPR_PROFILE_DIR` (user environment variable) to the new folder; the hook, the scheduler, and the skills all honour it. Re-run `install-scheduler.ps1` after setting it (or pass `-ProfileDir "D:\path\to\profile"`) so the scheduled task gets the path baked into its action instead of relying on the environment block it is launched with.

The scheduled run appends to `<profile>\journal\.scheduler.log` and exits non-zero when no journal entry was produced, so a broken morning run shows up in Task Scheduler's "Last Run Result".
