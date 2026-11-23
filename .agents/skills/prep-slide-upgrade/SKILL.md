---
name: prep-slide-upgrade
description: 旧课件翻新总控编排斜杠技能。触发场景：将旧 .pptx 或粗糙讲义升级美化，支持通过 frontend-slides 转为高颜值单文件网页互动课件，或通过 ppt-agent 启用 Visual QA 质检重排并导出高精度 .pptx。
---

# /prep-slide-upgrade — 旧课件翻新与重构总控编排

按以下规则识别输入与目标形态，严格调度 `~/.agents/skills/` 中对应的课件重构引擎。

## 路线选择（优先确认或按用户指令自动路由）

| 用户期望形态 | 强制路由 Skill | 适用特点 |
| :--- | :--- | :--- |
| **网页版 / 互动 HTML 课件 / 炫酷动效演示** | `frontend-slides` | 零依赖单文件 HTML，保留原 PPT 所有文字与提取图片，套用 34 套精选模板 |
| **防溢出 / 像素级 Visual QA / 汇报级高精度 PPTX** | `ppt-agent` | 走 `P2B SourceSynth → Outline → Style → PageAgent → Visual QA` 导出双格式 `.pptx` |
| **进希沃/WPS 原生矢量可编辑 PPTX** | `ppt-master` | 先拆解内容，再走 SVG 排版 + `svg_to_pptx.py` 原生可编辑 DrawingML 重构 |

## 执行流水线

### Phase 1：旧课件资产提取与结构梳理
1. 若选择 **路线 A（`frontend-slides`）**：
   - 读取 `~/.agents/skills/frontend-slides/SKILL.md`。
   - 运行 `python3 ~/.agents/skills/frontend-slides/scripts/extract-pptx.py <旧课件.pptx> <输出目录>` 提取每页标题、正文、备注及内嵌图片至 `assets/`。
   - 若原课件信息过载或结构松散，先做每页降维拆页与视觉层次重构，再生成风格预览供选定并输出单文件 HTML 互动课件。
2. 若选择 **路线 B（`ppt-agent`）**：
   - 读取 `~/.agents/skills/ppt-agent/SKILL.md` 与 `references/cli-cheatsheet.md`。
   - 将旧课件提取文本作为输入资料，严格走 **P2B 分支**（`SourceSynth → Outline → Style → PageAgent`）逐页生成 HTML，并执行 `visual_qa.py` 与 Puppeteer 像素级截图审计，零溢出通过后导出 `presentation-png.pptx` 与 `presentation-svg.pptx`。
3. 若选择 **路线 C（`ppt-master`）**：
   - 读取 `~/.agents/skills/ppt-master/SKILL.md`，重新规划视觉版式与配色，生成 16:9 SVG 并用 `svg_to_pptx.py` 导出原生可编辑 `.pptx`。

### Phase 2：归档与翻新对比说明
将翻新后的课件成品及提取素材统一保存至 `./备课输出/<学科>_<课题名称>/04_课件/`，并简明列出翻新前后的结构精简、版式升级与视觉质检结果。
