#!/usr/bin/env bash
set -euo pipefail

# 在全新对话 VM 中一键恢复完整中小学备课与课件 Skills 军火库
WORK_TMP="/tmp/skills_bootstrap_$$"
mkdir -p "$WORK_TMP" "$HOME/.agents/skills" "$HOME/.claude/skills" "$HOME/.codex/skills"
trap 'rm -rf "$WORK_TMP"' EXIT

npx -y skills add sunbigfly/ppt-agent-skills -g -a claude-code -a codex -y
npx -y skills add hugohe3/ppt-master --skill ppt-master -g -a claude-code -a codex -y
npx -y skills add alchaincyf/huashu-design --skill huashu-design -g -a claude-code -a codex -y
npx -y skills add zarazhangrui/frontend-slides --skill frontend-slides -g -a claude-code -a codex -y
npx -y skills add mohitagw15856/pm-claude-skills --skill cn-open-class --skill cn-lesson-plan --skill cn-class-meeting --skill cn-parent-meeting --skill cn-term-comments -g -a claude-code -a codex -y

git clone --depth 1 https://github.com/qizhitang/xiaozhi-skills.git "$WORK_TMP/xiaozhi-skills"
for sm in "$WORK_TMP/xiaozhi-skills"/teacher/*/*/SKILL.md; do
  src="$(dirname "$sm")"
  rm -rf "$HOME/.agents/skills/$(basename "$src")"
  cp -R "$src" "$HOME/.agents/skills/"
done

git clone --depth 1 https://github.com/mingchen666/Reviva.git "$WORK_TMP/Reviva"
for s in lesson-plan-skill worksheet-skill teaching-assessment-skill teaching-resource-research-skill concept-visualization-generator learning-visualization-skill ai-animation-skill manim-animation-maker edu-math-video edu-physics-video edu-chem-video edu-analytic-geometry edu-solid-geometry edu-chem-reaction classroom-activity-skill classroom-management-differentiation-skill teaching-document-writing-skill teacher-skill; do
  rm -rf "$HOME/.agents/skills/$s"
  cp -R "$WORK_TMP/Reviva/electron/builtin-assets/skills/$s" "$HOME/.agents/skills/"
done

git clone --depth 1 https://github.com/hezkvectory/hermes-edu-skills.git "$WORK_TMP/hermes-edu-skills"
node "$WORK_TMP/hermes-edu-skills/scripts/agent-pack.mjs" convert --tool claude-code --category teacher-tools --target "$HOME/.agents/skills"

git clone --depth 1 https://github.com/myvipbackup2/china-k12-teacher-skills.git "$WORK_TMP/china-k12-teacher-skills"
bash "$WORK_TMP/china-k12-teacher-skills/scripts/install.sh" "$HOME/.agents/skills" shanghai-primary-it

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
if [[ -d "$REPO_ROOT/.agents/skills" ]]; then
  for d in "$REPO_ROOT/.agents/skills"/*/; do
    [[ -d "$d" ]] || continue
    name="$(basename "$d")"
    rm -rf "$HOME/.agents/skills/$name"
    cp -R "$d" "$HOME/.agents/skills/$name"
  done
fi

for d in "$HOME/.agents/skills"/*/; do
  name="$(basename "$d")"
  ln -sfn "../../.agents/skills/$name" "$HOME/.claude/skills/$name"
  ln -sfn "../../.agents/skills/$name" "$HOME/.codex/skills/$name"
done

pip install -q -r "$HOME/.agents/skills/ppt-master/requirements.txt" cairosvg lxml matplotlib scipy sympy pypinyin
npm install --prefix "$HOME/.agents/skills/huashu-design"
npm install -g --allow-scripts=esbuild,puppeteer puppeteer dom-to-svg esbuild pptxgenjs pdf-lib playwright

echo "All skills bootstrapped: $(find "$HOME/.agents/skills" -maxdepth 2 -name SKILL.md | wc -l)"
