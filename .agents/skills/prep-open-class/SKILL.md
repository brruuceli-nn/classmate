---
name: prep-open-class
description: 公开课/优质课/赛课全套总控编排斜杠技能。触发场景：课标调研 → 学科教案骨架 → cn-open-class 说课磨课与评委问答 → 双版导学案 → 难点概念可视化 → huashu-design 高颜值互动课件，全流程例题与时间线 100% 对齐并归档至 ./备课输出/。
---

# /prep-open-class — 公开课与赛课全套总控编排

按以下**严格顺序**调度本地已安装的 `~/.agents/skills/` 子技能，确保公开课既有教学深度又有视觉高光。

## 执行流水线

### Phase 0：赛制与学情确认
确认：学科、年级、课题、公开课类型（校级教研课 / 优质课比赛 / 借班试讲）、时长（40/45 分钟），以及课件形态偏好（默认 `huashu-design` 高颜值互动 HTML 课件；若赛场要求希沃/WPS 原生 `.pptx` 则于 Phase 6 切换 `ppt-master`）。

### Phase 1：课标与课例深度调研
读取并执行 `~/.agents/skills/teaching-resource-research-skill/SKILL.md`，梳理新课标核心素养指向、高频获奖课亮点设计及学生典型前概念误区。

### Phase 2：学科教案与追问链打磨
1. 按学科读取对应 `~/.agents/skills/xiaozhi-teach-<subject>-*/SKILL.md`（通用用 `xiaozhi-teach-lesson-planner`）。
2. 叠加 `~/.agents/skills/xiaozhi-teach-classroom-coach/SKILL.md` 与 `~/.agents/skills/classroom-activity-skill/SKILL.md`，精修“认知冲突导入 → 核心探究活动 → 高阶追问链 → 理答兜底”。
3. 锁定教学骨架与母题，输出 `./备课输出/<学科>_<课题名称>/01_课标调研与教案.md`。

### Phase 3：说课稿、磨课预案与评委问答
1. 读取 `~/.agents/skills/cn-open-class/SKILL.md` 与 `~/.agents/skills/china-k12-lesson-prep/SKILL.md`。
2. 产出规范说课稿（教材/学情/目标/教法/过程/板书/反思）、借班破冰策略、学生卡点应急 Plan B、时间兜底裁切点及评委高频追问应答话术，写入：
   - `./备课输出/<学科>_<课题名称>/03_说课稿与公开课预案.md`

### Phase 4：双版导学案（100% 对齐公开课环节）
读取 `~/.agents/skills/worksheet-skill/SKILL.md`，生成与公开课主线任务完全一致的：
- `./备课输出/<学科>_<课题名称>/02_导学案_学生版.md`
- `./备课输出/<学科>_<课题名称>/02_导学案_教师版.md`

### Phase 5：重难点概念可视化交互构件
读取 `~/.agents/skills/concept-visualization-generator/SKILL.md`（按学科/需求叠加 `edu-analytic-geometry`、`edu-solid-geometry`、`edu-chem-reaction`、`learning-visualization-skill` 或 `manim-animation-maker`），为本课最抽象的核心概念制作可交互 HTML 动态演示或动画切片，存入：
- `./备课输出/<学科>_<课题名称>/04_课件/`

### Phase 6：高颜值互动课件与评价量规
1. 读取 `~/.agents/skills/huashu-design/SKILL.md`（**严格先出 3 个设计方向初稿给老师选定，再全量制作**，并可集成 Phase 5 可视化构件；若老师指定希沃可编辑 `.pptx`，则改为调用 `ppt-master`），产物存入 `./备课输出/<学科>_<课题名称>/04_课件/`。
2. 读取 `~/.agents/skills/teaching-assessment-skill/SKILL.md`（可叠加 `china-k12-check-understanding`），生成听评课量规与出门检测，写入 `./备课输出/<学科>_<课题名称>/05_评价量规与拓展练习.md`。
