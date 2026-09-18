#!/usr/bin/env node
// SessionStart hook for the LPR Ayurveda companion.
// Decides, once per day, whether to nudge Claude to offer the daily check-in
// (or the first-time intake). Prints a JSON hookSpecificOutput block on stdout
// only when something is due; otherwise prints nothing. Never fails the session.
'use strict';
const fs = require('fs');
const path = require('path');

function today() {
  const d = new Date();
  const p = (n) => String(n).padStart(2, '0');
  return `${d.getFullYear()}-${p(d.getMonth() + 1)}-${p(d.getDate())}`;
}
function daysBetween(a, b) {
  const ms = new Date(b + 'T00:00:00') - new Date(a + 'T00:00:00');
  return Math.round(ms / 86400000);
}
function emit(text) {
  process.stdout.write(JSON.stringify({
    hookSpecificOutput: { hookEventName: 'SessionStart', additionalContext: text }
  }));
}
// Recording "offered today" must never be able to cancel the offer itself:
// a read-only or locked state.json would otherwise silently kill the nudge forever.
function markOffered(statePath, state, day) {
  state.lastOffered = day;
  try { fs.writeFileSync(statePath, JSON.stringify(state, null, 2)); } catch (_) {}
}

try {
  // Drain stdin (hook input JSON); we do not need it.
  try { fs.readFileSync(0, 'utf8'); } catch (_) {}

  const pluginRoot = process.argv[2] || process.env.CLAUDE_PLUGIN_ROOT || path.resolve(__dirname, '..');
  if (!process.env.CLAUDE_PLUGIN_ROOT) process.env.CLAUDE_PLUGIN_ROOT = pluginRoot;

  // One resolver decides where the profile lives, for the hook, the skills and the
  // scheduled task alike, and seeds it from the bundled templates on a first run.
  let profileDir;
  try {
    const resolver = require(path.join(pluginRoot, 'scripts', 'profile-dir.js'));
    profileDir = resolver.resolveProfileDir().dir;
    try { resolver.seed(profileDir); } catch (_) {}
  } catch (_) {
    profileDir = process.env.LPR_PROFILE_DIR
      || (process.env.CLAUDE_PLUGIN_DATA && path.join(process.env.CLAUDE_PLUGIN_DATA, 'profile'))
      || path.resolve(pluginRoot, '..', 'profile');
  }
  const statePath = path.join(profileDir, 'state.json');
  const journalDir = path.join(profileDir, 'journal');
  if (!fs.existsSync(profileDir)) process.exit(0);

  let state = {};
  try { state = JSON.parse(fs.readFileSync(statePath, 'utf8')); } catch (_) { state = {}; }
  const t = today();
  const todayEntry = path.join(journalDir, `${t}.md`);
  const skillPrefix = '/lpr-ayurveda:';

  if (!state.intakeDone) {
    if (state.lastOffered === t) process.exit(0);
    markOffered(statePath, state, t);
    emit(
      `[LPR Ayurveda companion] The personal Ayurvedic profile in ${profileDir} has not been set up yet. ` +
      `In ONE short sentence at the start of your first reply, offer to run ${skillPrefix}lpr-intake (about 15 minutes, can be split). ` +
      `If the user is busy or declines, proceed with their work and do not mention it again today. ` +
      `This is an Ayurveda-only companion; never introduce Western medicine when discussing LPR.`
    );
    process.exit(0);
  }

  let answeredToday = false;
  let pendingToday = false;
  try {
    if (fs.existsSync(todayEntry)) {
      const body = fs.readFileSync(todayEntry, 'utf8');
      // The check-in skill writes these as YAML frontmatter keys at line start.
      answeredToday = /^status:\s*answered/mi.test(body);
      pendingToday = /^status:\s*pending/mi.test(body);
    }
  } catch (_) { /* unreadable journal: fall through and still offer the check-in */ }
  if (answeredToday) process.exit(0);
  if (state.lastOffered === t) process.exit(0);

  markOffered(statePath, state, t);

  const last = state.lastCheckin;
  const gap = last ? daysBetween(last, t) : null;
  const gapText = gap === null ? 'No check-in has been recorded yet.' :
    gap === 0 ? 'A check-in was recorded today.' : `The last check-in was ${gap} day(s) ago (${last}).`;
  const pendingText = pendingToday
    ? ` Today's journal file already holds questions written by the morning scheduled task; ask those.`
    : '';

  emit(
    `[LPR Ayurveda companion] Daily check-in is due. ${gapText}${pendingText} ` +
    `At the start of your first reply, in ONE short sentence, offer today's Ayurvedic check-in (3 to 5 quick questions via ${skillPrefix}lpr-checkin). ` +
    `If the user accepts, run the lpr-checkin skill before other work. If they decline or are busy, proceed and do not raise it again today. ` +
    `Ayurveda-only rule applies to anything LPR-related.`
  );
} catch (e) {
  // Never block a session because of the companion.
  process.exit(0);
}
