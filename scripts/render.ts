#!/usr/bin/env -S node --enable-source-maps
import { spawnSync } from 'node:child_process';
import { existsSync } from 'node:fs';
import path from 'node:path';

const [, , inputFile, width = '80', height = '24'] = process.argv;

if (!inputFile) {
  console.error('Usage: render.ts <design.tui> [width] [height]');
  process.exit(1);
}

const studioDir = process.env.TUI_STUDIO_DIR || path.join(process.env.HOME || '', 'arena', 'tui-studio');
const upstreamRender = path.join(studioDir, 'scripts', 'render.ts');

if (!existsSync(studioDir)) {
  console.error(`Error: tui-studio directory not found: ${studioDir}`);
  process.exit(1);
}

if (!existsSync(upstreamRender)) {
  console.error(`Error: tui-studio renderer not found: ${upstreamRender}`);
  process.exit(1);
}

const result = spawnSync('npx', ['--yes', 'tsx', upstreamRender, inputFile, width, height], {
  cwd: studioDir,
  stdio: 'inherit',
  env: process.env,
});

if (typeof result.status === 'number') {
  process.exit(result.status);
}

process.exit(1);
