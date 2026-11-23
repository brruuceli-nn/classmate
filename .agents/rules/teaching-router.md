# 中小学教研与课件制作“零猜测”硬绑定调度规则

> **技能库位置**：`~/.agents/skills/`（已同步软链至 `~/.claude/skills/` 与 `~/.codex/skills/`）。以下所有 Skill 名称均已按真实目录与 `SKILL.md` 的 `name` 字段精确校验。

---

## 1. 调度铁律（渐进式加载 & 骨架对齐）

1. **按需精准读档**：收到请求后，先检索下方「单点触发词表」「学科叠加表」「冲突仲裁表」，**只读取命中 Skill 的 `~/.agents/skills/<skill-name>/SKILL.md`**（及必需的 `references/`），**严禁全盘扫描目录或猜测技能名**。
2. **教学骨架先行铁律**：凡涉及备课、导学案或课件制作，必须遵循**「先定教学骨架（教学目标 / 课时时间矩阵 / 核心提问链 / 母题例题）→ 再出导学案 → 最后出课件」**，确保三者的例题数据、术语口径、环节顺序 **100% 对齐**。
3. **严格执行专业流程**：不得跳过命中 Skill 的核心机制（如 `ppt-agent` 的状态机与 Visual QA、`huashu-design` 的三方向初稿确认、`ppt-master` 的 `svg_to_pptx.py` 流程、`cn-open-class` 的磨课与评委问答）。

---

## 2. 单点精准触发词映射表

| 用户触发关键词 / 意图 | 强制绑定主 Skill（真实名称） | 协同 / 补充说明 |
| :--- | :--- | :--- |
| 导学案 / 预习单 / 任务单 / 学案 / 分层作业 / 错题单 | `worksheet-skill` | 默认输出**学生版 + 教师版**；可叠加学科 `teacher-<subject>-homework-generation` 或 `xiaozhi-teach-assignment-designer` |
| 教案 / 教学设计 / 新授课 / 大单元 / 提问链 | 对应学科 `xiaozhi` 学科 Skill（见 §3） | 未指定学科时用 `xiaozhi-teach-lesson-planner`（可辅以 `lesson-plan-skill`、`china-k12-lesson-planning`） |
| 表格式教案 / 传统教案 / 交检查教案 | `cn-lesson-plan` | 中国学校规范教案排版格式 |
| 公开课 / 优质课 / 赛课 / 说课稿 / 磨课 / 评课 / 借班 | `cn-open-class` | 可叠加 `china-k12-lesson-prep` 做课前学生卡点预演与 Plan B |
| PPT / 课件 / 希沃 / 可编辑PPT / WPS课件 | `ppt-master` | 生成原生可编辑 `.pptx` + 口播备注 |
| 高精度PPT / 防溢出 / 视觉质检 / 汇报级PPT / 学术PPT | `ppt-agent` | 对应仓库 `sunbigfly/ppt-agent-skills`；启用 Subagent 隔离与 Puppeteer 像素级 Visual QA |
| 互动课件 / HTML课件 / 网页课件 / 高颜值课件 / 微课动画 / 风格盲选 | `huashu-design` | 严格先出 3 个方向初稿供选，选定后再执行与导出 |
| 旧PPT改版 / PPT转网页 / 前端幻灯片 | `frontend-slides` | 含 `scripts/extract-pptx.py` 提取原稿与 34 套模板重制 |
| 概念可视化 / 原理演示 / 动态图解 / 抽象概念 / 实验模拟 | `concept-visualization-generator` | 叠加同库可视化/动画 Skill：`learning-visualization-skill`、`ai-animation-skill`、`manim-animation-maker`、`edu-math-video`、`edu-physics-video`、`edu-chem-video`、`edu-analytic-geometry`、`edu-solid-geometry`、`edu-chem-reaction` |
| 命题 / 出卷 / 组卷 / 细目表 / 出几道题 | 优先学科命题 Skill，通用 `xiaozhi-teach-exam-designer` | 数学 `xiaozhi-teach-math-exam-designer`；历史 `xiaozhi-teach-history-assessment-guide`；英语 `xiaozhi-teach-english-assessment` |
| 学情分析 / 成绩分析 / 试卷分析 / 区分度 | `xiaozhi-teach-student-analyzer` | 数学错因叠加 `xiaozhi-teach-math-error-analyzer`；快速班情诊断可用 `teacher-class-analysis-lite` |
| 追问 / 提问设计 / 课堂冷场 / 理答 | `xiaozhi-teach-classroom-coach` | 活动设计叠加 `classroom-activity-skill`；课堂常规与差异支持叠加 `classroom-management-differentiation-skill` |
| 评价量规 / Rubric / 出门条 / 观察表 | `teaching-assessment-skill` | 1–3 题快速形成性检测叠加 `china-k12-check-understanding` |
| 查课标 / 找素材 / 教研调研 / 课例参考 | `teaching-resource-research-skill` | 教研总结/听评课稿/培训公文写作叠加 `teaching-document-writing-skill` |
| 主题班会 / 家长会 / 期末评语 | `cn-class-meeting` / `cn-parent-meeting` / `cn-term-comments` | 独立家长沟通/阶段报告可叠加 `xiaozhi-teach-parent-communication`、`teacher-parent-report-lite` |

---

## 3. 学科自动叠加表

| 学科 | 自动绑定主学科 Skill（`xiaozhi` 矩阵） | 学科辅修 / 可视化与安全校验叠加 |
| :--- | :--- | :--- |
| **语文** | `xiaozhi-teach-chinese-reading-guide`（现代文）、`xiaozhi-teach-chinese-classical-guide`（古诗文）、`xiaozhi-teach-chinese-writing-guide`（写作） | `teacher-chinese-lesson-planning`、`teacher-chinese-homework-generation`、`teacher-chinese-unit-review` |
| **数学** | `xiaozhi-teach-math-lesson-planner`、`xiaozhi-teach-math-exam-designer`、`xiaozhi-teach-math-error-analyzer` | `teacher-math-*`；几何/推导叠加 `edu-analytic-geometry`、`edu-solid-geometry`、`edu-math-video`、`manim-animation-maker`（**强制数理验算**） |
| **英语** | `xiaozhi-teach-english-listening-designer`、`xiaozhi-teach-english-speaking-designer`、`xiaozhi-teach-english-assessment` | `teacher-english-lesson-planning`、`teacher-english-homework-generation`、`teacher-english-unit-review` |
| **物理** | `xiaozhi-teach-physics-lesson-planner`、`xiaozhi-teach-physics-experiment-coach`、`xiaozhi-teach-physics-problem-guide` | `teacher-physics-*`；演示叠加 `edu-physics-video`、`manim-animation-maker`（**强制物理量纲与实验安全校验**） |
| **化学** | `xiaozhi-teach-chemistry-lesson-planner`、`xiaozhi-teach-chemistry-lab-guide`、`xiaozhi-teach-chemistry-notation-drill` | `teacher-chemistry-*`；微观/微课叠加 `edu-chem-reaction`、`edu-chem-video`（**强制实验安全分级红线**） |
| **生物** | `xiaozhi-teach-biology-lesson-planner`、`xiaozhi-teach-bio-geo-review-planner` | `teacher-biology-lesson-planning`、`teacher-biology-homework-generation`、`teacher-biology-unit-review`（**强制实验安全定档**） |
| **历史** | `xiaozhi-teach-history-lesson-planner`、`xiaozhi-teach-history-assessment-guide` | `teacher-history-lesson-planning`、`teacher-history-homework-generation`、`teacher-history-unit-review`（史料实证与时空框架） |
| **地理** | `xiaozhi-teach-geography-lesson-planner`、`xiaozhi-teach-bio-geo-review-planner` | `teacher-geography-lesson-planning`、`teacher-geography-homework-generation`、`teacher-geography-unit-review`（读图与人地协调） |
| **道法/政治 & 信息科技** | 道法：`teacher-politics-lesson-planning` / `homework-generation` / `unit-review`；信息科技：`china-k12-lesson-planning` + `kid-friendly-explainer-cn` | 信息科技可按需读取 `shanghai-primary-it` 区域课标参考；分层改造叠加 `china-k12-lesson-differentiation` |

---

## 4. 同类工具冲突仲裁表

| 场景冲突 | 仲裁结果（默认首选项） | 触发/确认原则 |
| :--- | :--- | :--- |
| 只说“做 PPT / 做课件”，无特殊说明且非公开课 | **`ppt-master`** | 保证输出原生可编辑 `.pptx`，进希沃白板 / WPS / PowerPoint 可直接改字改图 |
| 明确处于**公开课 / 优质课 / 赛课**语境 | **`huashu-design`** | 主打高颜值互动 HTML 课件；生成前可一句话简要确认“要网页互动版还是 `ppt-master` 希沃可编辑 `.pptx` 版” |
| 明确要求“**绝对不溢出 / 严苛视觉质检 / 汇报级高精度 / 学术 PPT**” | **`ppt-agent`** | 强制启用 Subagent 分阶段生产 + Puppeteer 像素级 `visual_qa.py` 质检 |
| 提供既有 `.pptx` 要求“**旧 PPT 改版 / 转网页互动**” | **`frontend-slides`** | 先拆解提取原 PPT 内容与配图，再重构网页幻灯片 |

---

## 5. 文件归档规范

所有备课与课件产出物统一归档至当前工作区 `./备课输出/<学科>_<课题名称>/`：

| 序号/文件名 | 用途 |
| :--- | :--- |
| `01_课标调研与教案.md` | 课标依据、学情与重难点、教学骨架（目标/时间矩阵/提问链/母题）及正式教案 |
| `02_导学案_学生版.md` | 学生课堂预习、探究任务单与分层练习（不含答案） |
| `02_导学案_教师版.md` | 含参考答案、易错预警、追问点拨与批改标准 |
| `03_说课稿与公开课预案.md` | 公开课/赛课专属：说课稿、磨课卡点、借班破冰、设备 Plan B 与评委问答 |
| `04_课件/` | `.pptx`、`.html` 互动课件、概念可视化网页/动画及素材 |
| `05_评价量规与拓展练习.md` | 课堂观察表、Rubric 评分量规、出门测及课后拓展变式 |

---

## 6. 配图与生图协作规范（Nano Banana Pro 工单模式）

1. **默认禁用内置生图**：默认**严禁调用 Antigravity 内置 `generate_image` 工具**（除非用户明确口头要求“用内置生图”）。
2. **图表代码直出**：流程图、几何图、电路/装置示意图、数据图表等一律直接用 **SVG / HTML / CSS / Mermaid** 代码生成，不向用户要图（注：涉及国界的地理底图仍严守教材原图/标准地图红线）。
3. **《Google AI Studio (Nano Banana Pro) 配图工单》触发条件**：仅当需要**课文情境插画、写实场景、历史风貌或高质感封面主视觉**时，向用户输出配图工单，每张图必须明确：
   - **Nano Banana Pro 提示词**：采用自然语言构图描述，明确光影风格与排版留白区，**不堆砌老式 SD 标签词**；如需中文标注，用双引号精确标出；
   - **长宽比**：如 `16:9`、`4:3`、`3:4`、`1:1`；
   - **精确保存路径与文件名**：如 `./备课输出/<学科>_<课题>/04_课件/assets/slide_01_cover.png`。
4. **流水线不断档（先占位、后热更）**：生成课件或导学案时，先自动创建 `assets/` 目录并写入占位图/路径引用，把整套成品跑完；待用户在 AI Studio 生成并把图片放到指定路径后，只要用户回复**“图已就位”**，立即自动读取本地图片，重新编译 `.pptx` 或更新 HTML 课件并执行排版检查。

