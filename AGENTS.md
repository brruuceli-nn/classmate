# 工作区调度入口（AGENTS.md）

本工作区已配置中小学备课、导学案、公开课与高阶 PPT/互动课件制作 Skills 军火库（全局目录 `~/.agents/skills/`）。完整细则见 [`.agents/rules/teaching-router.md`](.agents/rules/teaching-router.md)。

## 1. 调度铁律（渐进式加载）

- **查表→读档→执行**：处理任何教研/课件请求前，必先查下表与 `.agents/rules/teaching-router.md`，**仅读取命中 Skill 的 `~/.agents/skills/<skill-name>/SKILL.md`**，严禁全盘扫描或猜测。
- **骨架先行**：备课必须**「先定教学骨架（目标/时间矩阵/提问链/例题），再出导学案，再做课件」**，确保教案、导学案、课件例题与环节 **100% 对齐**。

## 2. 核心触发速查表

| 触发词 | 真实 Skill 名 | 触发词 | 真实 Skill 名 |
| :--- | :--- | :--- | :--- |
| 导学案/预习单/任务单/分层作业 | `worksheet-skill` | PPT/课件/希沃/WPS可编辑 | `ppt-master` |
| 教案/教学设计/新授课/大单元 | 学科 `xiaozhi-teach-*` / `xiaozhi-teach-lesson-planner` | 高精度PPT/防溢出/Visual QA | `ppt-agent` |
| 表格式/检查用教案 | `cn-lesson-plan` | 互动/HTML/高颜值课件/微课动画 | `huashu-design` |
| 公开课/赛课/说课稿/磨课 | `cn-open-class` | 旧PPT改版/PPT转网页 | `frontend-slides` |
| 概念可视化/原理演示/实验模拟 | `concept-visualization-generator` 等 | 命题/组卷/细目表 | 学科命题 / `xiaozhi-teach-exam-designer` |
| 学情/成绩/试卷区分度分析 | `xiaozhi-teach-student-analyzer` | 追问/课堂冷场/理答 | `xiaozhi-teach-classroom-coach` |
| 评价量规/Rubric/出门条 | `teaching-assessment-skill` | 查课标/找素材/教研调研 | `teaching-resource-research-skill` |
| 主题班会 / 家长会 / 期末评语 | `cn-class-meeting` / `cn-parent-meeting` / `cn-term-comments` | 总控斜杠指令 | `/prep-new-lesson` `/prep-open-class` `/prep-exam-review` `/prep-slide-upgrade` |

## 3. 学科叠加 & 仲裁 & 归档

- **学科绑定**：语(`xiaozhi-teach-chinese-reading-guide`/`classical-guide`/`writing-guide`)、数(`xiaozhi-teach-math-lesson-planner`/`exam-designer`/`error-analyzer`)、英(`xiaozhi-teach-english-listening-designer`/`speaking-designer`/`assessment`)、物(`xiaozhi-teach-physics-lesson-planner`/`experiment-coach`/`problem-guide`)、化(`xiaozhi-teach-chemistry-lesson-planner`/`lab-guide`/`notation-drill`)、生(`xiaozhi-teach-biology-lesson-planner`/`bio-geo-review-planner`)、史(`xiaozhi-teach-history-lesson-planner`/`assessment-guide`)、地(`xiaozhi-teach-geography-lesson-planner`/`bio-geo-review-planner`)；理化生强制叠加实验安全校验，数理强制验算。
- **冲突仲裁**：常规说“做PPT/课件”→`ppt-master`；公开课/赛课→`huashu-design`（生成前可简要确认网页互动版或 `ppt-master` 可编辑版）；防溢出/严苛质检→`ppt-agent`。
- **归档路径**：`./备课输出/<学科>_<课题名称>/` 下按 `01_课标调研与教案.md`、`02_导学案_学生版.md`、`02_导学案_教师版.md`、`03_说课稿与公开课预案.md`、`04_课件/`、`05_评价量规与拓展练习.md` 保存。
- **配图规则**：默认禁用内置 `generate_image`（除非口头要求“用内置生图”）；图表用 SVG/HTML/CSS/Mermaid 直出；情境插画/写实/封面主视觉输出《Google AI Studio (Nano Banana Pro) 配图工单》（自然语言+留白+长宽比+`assets/`精确路径），先占位跑完流程，收到“图已就位”后自动重编 PPTX/HTML 并质检。

