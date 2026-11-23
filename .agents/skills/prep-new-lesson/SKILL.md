---
name: prep-new-lesson
description: 日常新授课全套备课总控编排斜杠技能。触发场景：老师需要一站式完成一节日常新授课的“课标调研与教案骨架 → 学生版+教师版双版导学案 → ppt-master 原生可编辑 .pptx 课件 → 评价量规”，并严格对齐例题与环节归档至 ./备课输出/。
---

# /prep-new-lesson — 日常新授课全套备课总控编排

按以下**严格顺序**调度本地已安装的 `~/.agents/skills/` 子技能，禁止跳过骨架定稿或混用未校准的例题。

## 执行流水线

### Phase 0：确认基本参数（缺项则极简追问）
确认：学科、学段/年级、课题名称、教材版本（如有）、课时时长（默认 40 或 45 分钟），以及输出目录 `./备课输出/<学科>_<课题名称>/`。

### Phase 1：课标调研与教学骨架定稿（锁定母题与环节）
1. 如需核查课标要求或补充教学素材，读取并执行 `~/.agents/skills/teaching-resource-research-skill/SKILL.md`。
2. 按学科精确读取对应 `xiaozhi` 学科教案 Skill（未命中特定学科时读取 `~/.agents/skills/xiaozhi-teach-lesson-planner/SKILL.md`；若用户要求传统表格式教案，叠加 `~/.agents/skills/cn-lesson-plan/SKILL.md`）：
   - 语文：`xiaozhi-teach-chinese-reading-guide` / `xiaozhi-teach-chinese-classical-guide` / `xiaozhi-teach-chinese-writing-guide`
   - 数学：`xiaozhi-teach-math-lesson-planner`（强制验算全部例题与变式）
   - 英语：`xiaozhi-teach-english-listening-designer` / `xiaozhi-teach-english-speaking-designer`
   - 物理：`xiaozhi-teach-physics-lesson-planner`（实验课叠加 `xiaozhi-teach-physics-experiment-coach`）
   - 化学：`xiaozhi-teach-chemistry-lesson-planner`（实验课叠加 `xiaozhi-teach-chemistry-lab-guide` 并遵循实验安全红线）
   - 生物：`xiaozhi-teach-biology-lesson-planner`
   - 历史：`xiaozhi-teach-history-lesson-planner`
   - 地理：`xiaozhi-teach-geography-lesson-planner`
   - 道法/信息科技：`teacher-politics-lesson-planning` / `china-k12-lesson-planning`
3. **锁定核心教学骨架**：明确教学目标、分钟级时间矩阵、主问题追问链、全部课堂例题与变式题原文/答案，写入：
   - `./备课输出/<学科>_<课题名称>/01_课标调研与教案.md`

### Phase 2：双版导学案生成（100% 对齐骨架）
1. 读取 `~/.agents/skills/worksheet-skill/SKILL.md`（如需三级分层改造可辅以 `~/.agents/skills/china-k12-lesson-differentiation/SKILL.md`）。
2. 严格沿用 Phase 1 的教学骨架、情境导入与例题，输出两份独立文件：
   - `./备课输出/<学科>_<课题名称>/02_导学案_学生版.md`（留空做题区、探究支架，无答案）
   - `./备课输出/<学科>_<课题名称>/02_导学案_教师版.md`（含详尽答案、易错点提示、追问话术）

### Phase 3：原生可编辑 `.pptx` 课件生成
1. 读取 `~/.agents/skills/ppt-master/SKILL.md` 及其工作流规范。
2. 基于 Phase 1 骨架与 Phase 2 例题，完成逐页大纲 → SVG 生成 → 调用 `svg_to_pptx.py` 转为**原生可编辑 `.pptx`**（含讲者口播备注），确保可直接导入希沃白板 / WPS / PowerPoint 二次编辑。
3. 将产物（`.pptx` 与工作目录）存入：
   - `./备课输出/<学科>_<课题名称>/04_课件/`

### Phase 4：课堂检测与评价收尾
读取 `~/.agents/skills/teaching-assessment-skill/SKILL.md`（快速出门测可叠加 `~/.agents/skills/china-k12-check-understanding/SKILL.md`），生成与本课目标对应的评价量规与拓展练习，写入：
- `./备课输出/<学科>_<课题名称>/05_评价量规与拓展练习.md`
