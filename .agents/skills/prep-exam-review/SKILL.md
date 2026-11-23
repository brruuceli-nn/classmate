---
name: prep-exam-review
description: 试卷讲评全套总控编排斜杠技能。触发场景：学情与 P/D 区分度/错因诊断分析 → 错题变式再练导学案（学生+教师版）→ 试卷讲评 .pptx 课件，并归档至 ./备课输出/。
---

# /prep-exam-review — 试卷讲评全套总控编排

按以下**严格顺序**调度本地已安装的 `~/.agents/skills/` 子技能，把“逐题对答案”升级为“错因诊断→靶向讲评→变式巩固”。

## 执行流水线

### Phase 0：接收试卷与成绩素材
收集用户提供的试卷原文/错题截图、班级得分率或成绩明细表（若仅有题目无统计数据，提示可补全或按高频易错预设讲评重点）。

### Phase 1：学情诊断与 P/D 区分度分析
1. 读取 `~/.agents/skills/xiaozhi-teach-student-analyzer/SKILL.md`（数学科叠加 `~/.agents/skills/xiaozhi-teach-math-error-analyzer/SKILL.md`；快速班级诊断可辅以 `teacher-class-analysis-lite`）。
2. 计算/梳理高频失分题、难度 P 与区分度 D、归类四维错因（概念混淆 / 审题遗漏 / 模型迁移 / 运算规范），确定课堂“详讲、略讲、学生互讲”时间分配与讲评教学骨架，写入：
   - `./备课输出/<学科>_<课题名称>/01_课标调研与教案.md`

### Phase 2：错题归因与变式再练导学案
1. 读取 `~/.agents/skills/worksheet-skill/SKILL.md`，按学科可叠加 `teacher-<subject>-homework-generation` 或物理 `xiaozhi-teach-physics-problem-guide`（五步法）。
2. 为每道核心错题配备“原题复盘 + 错因诊断栏 + 1–2 道梯度变式巩固题”，输出：
   - `./备课输出/<学科>_<课题名称>/02_导学案_学生版.md`
   - `./备课输出/<学科>_<课题名称>/02_导学案_教师版.md`

### Phase 3：试卷讲评课件生成
1. 默认读取 `~/.agents/skills/ppt-master/SKILL.md` 生成原生可编辑讲评 `.pptx`（如用户要求高密度多栏对比防溢出或严苛排版质检，则切换 `~/.agents/skills/ppt-agent/SKILL.md`）。
2. 课件须包含：学情数据总览页、错因分类树、典型错解对比展示、规范解题板书、变式训练与即时反馈页，存入：
   - `./备课输出/<学科>_<课题名称>/04_课件/`

### Phase 4：二次过关检测与分层补偿
读取 `~/.agents/skills/teaching-assessment-skill/SKILL.md`（及 `china-k12-check-understanding`），设计课末 5 分钟“错题清零二次过关小测”与分层补偿清单，写入：
- `./备课输出/<学科>_<课题名称>/05_评价量规与拓展练习.md`
