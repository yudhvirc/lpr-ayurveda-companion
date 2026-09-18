#!/usr/bin/env node
// Resolves where this person's LPR profile lives, and seeds it on first run.
//
// Order of preference:
//   1. LPR_PROFILE_DIR            - an explicit choice always wins
//   2. <plugin data dir>/profile  - survives plugin updates; the default for an install
//   3. <plugin root>/../profile   - the working-copy layout, for developing the plugin
//
// Printing: `node profile-dir.js` prints the resolved path and nothing else, so a
// skill or script can read it directly. Pass --seed to also create the folder from
// the bundled templates when it does not exist yet.
'use strict';
const fs = require('fs');
const path = require('path');

function pluginRoot() {
  return process.env.CLAUDE_PLUGIN_ROOT || path.resolve(__dirname, '..');
}

function resolveProfileDir() {
  const explicit = (process.env.LPR_PROFILE_DIR || '').trim();
  if (explicit) return { dir: path.resolve(explicit), source: 'LPR_PROFILE_DIR' };

  const root = pluginRoot();

  // The working-copy layout: a sibling profile folder that already has content.
  const sibling = path.resolve(root, '..', 'profile');
  if (fs.existsSync(path.join(sibling, 'profile.md'))) {
    return { dir: sibling, source: 'plugin sibling folder' };
  }

  const data = (process.env.CLAUDE_PLUGIN_DATA || '').trim();
  if (data) return { dir: path.join(path.resolve(data), 'profile'), source: 'plugin data dir' };

  return { dir: sibling, source: 'plugin sibling folder (fallback)' };
}

function copyTree(from, to) {
  fs.mkdirSync(to, { recursive: true });
  for (const entry of fs.readdirSync(from, { withFileTypes: true })) {
    const src = path.join(from, entry.name);
    const dst = path.join(to, entry.name);
    if (entry.isDirectory()) copyTree(src, dst);
    else if (!fs.existsSync(dst)) fs.copyFileSync(src, dst);
  }
}

function seed(dir) {
  const templates = path.join(pluginRoot(), 'profile-template');
  if (!fs.existsSync(templates)) return false;
  const fresh = !fs.existsSync(path.join(dir, 'profile.md'));
  copyTree(templates, dir);
  fs.mkdirSync(path.join(dir, 'journal'), { recursive: true });
  fs.mkdirSync(path.join(dir, 'vaidya-visits'), { recursive: true });
  return fresh;
}

const resolved = resolveProfileDir();
if (process.argv.includes('--seed')) {
  try { seed(resolved.dir); } catch (e) { /* never block on seeding */ }
}
if (process.argv.includes('--verbose')) {
  process.stdout.write(resolved.dir + '\n(resolved from: ' + resolved.source + ')\n');
} else {
  process.stdout.write(resolved.dir + '\n');
}

module.exports = { resolveProfileDir, seed };
