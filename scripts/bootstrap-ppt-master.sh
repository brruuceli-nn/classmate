#!/usr/bin/env bash
set -euo pipefail

# 快速在新对话 VM 中安装 ppt-master 及核心 PPTX 导出依赖（幂等）
if [[ ! -f "$HOME/.agents/skills/ppt-master/SKILL.md" ]]; then
  echo "[bootstrap] Installing hugohe3/ppt-master..."
  npx -y skills add hugohe3/ppt-master --skill ppt-master -g -a claude-code -a codex -y
else
  echo "[bootstrap] ppt-master already installed."
fi

if ! python3 -c "import pptx, pathops, uharfbuzz, PIL, yaml, lxml, cairosvg" 2>/dev/null; then
  echo "[bootstrap] Installing Python PPTX dependencies..."
  pip install -q PyYAML python-pptx XlsxWriter skia-pathops uharfbuzz Pillow numpy lxml cairosvg edge-tts
else
  echo "[bootstrap] Python PPTX dependencies already satisfied."
fi

echo "[bootstrap] ppt-master ready: $HOME/.agents/skills/ppt-master/SKILL.md"
