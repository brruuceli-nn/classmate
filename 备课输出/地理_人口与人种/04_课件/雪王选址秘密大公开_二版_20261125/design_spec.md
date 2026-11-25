<!-- ppt-master-schema: design-spec/v1 -->
# 雪王选址秘密大公开_二版 - Design Spec

## I. Project Information

| Item | Value |
| --- | --- |
| Project Name | 雪王选址秘密大公开_二版 |
| Canvas Format | PPT 16:9 (1280×720) |
| Page Count | 22 |
| Primary Language | zh-CN |
| Target Audience | 初中七年级学生（借班公开课现场受众）及听评课地理教研员、评委老师 |
| Communication Intent | 以“中国茶出海与蜜雪冰城全球选址调研员”一境到底主线开展 45 分钟初中地理借班公开课教学：先借茶文化历史与雪王考核破冰代入，再依次引导学生读图与计算探究世界人口 80 亿增长趋势、人口分布“四密四疏”规律与自然成因、人口密度概念辨析、人口自然增长率及增长过快/过慢问题（人地协调观），最后通过全球选址圈画与圣保罗门店多元顾客升华各民族各人种一律平等 |
| Desired Audience Outcome | 学生能心算每增加 10 亿人口所需时间并理解“基数大”效应，能叠置人口/地形/气候三图归纳“四密四疏”规律并完成 6 个盲盒选址判断与人口密度辨析，能计算人口自然增长率并对比雅加达与东京分析人口增长过快/过慢问题，树立人地协调观与各人种一律平等观念 |
| Core Message / Ask / Action | 商业看热闹，地理看门道：全球选址既要看人口疏密（中低纬沿海平原、温暖湿润），也要看人口自然增长率与年龄结构，人口增长须与发展相协调，世界各人种一律平等、各美其美 |
| Delivery Context | 主要为小王老师主讲的 45 分钟初中地理借班公开课教室希沃/大屏现场投影（配合纸质《资料包》三图叠置与 4 次课堂活动）；次要为赛课评委审阅与课后复盘归档（不使用独立 HTML 交互网页） |
| Artifact Afterlife | 作为公开课/赛课原生可编辑 PPTX 主课件（进希沃白板或 PowerPoint/WPS 可直接微调文字与替换实景配图），并与教案、双版导学案、说课稿及逐页口播讲稿同步归档 |
| Reading Mode | balanced |
| Content Strategy | 紧扣用户提供的 21 页 PPT 要求与逐页口播讲稿，在 ppt01 前增加 1 页正式课题封面页（共 22 页），严格保留热身题 16% 与 7% 原始数值不变，并将课堂活动序号统一对齐为活动一至活动四 |
| Design Style | 活力雪王·青春调研室（custom: soft-rounded + swiss-minimal） |
| AI Image Acquisition Path | not applicable |
| Generation Mode | continuous |
| Spec Refinement | disabled |
| Speaker Notes | enabled — explicit user instruction |
| Custom Animations | enabled — explicit user instruction for P05/P17 answer reveal and P10/P11 landscape sequence motion |
| Narration Audio | disabled — final Stage-2 proactive policy |
| Created Date | 2026-11-25 |

## II. Canvas Specification

| Property | Value |
| --- | --- |
| Format | PPT 16:9 |
| Dimensions | 1280 × 720 |
| viewBox | `0 0 1280 720` |
| Margins | 48px left/right, 36px top/bottom |
| Content Area | `x=48..1232, y=36..684` (1184 × 648) |

## III. Visual Theme

### Theme Style

- **Mode**: custom
- **Mode References**: instructional, narrative
- **Mode Behavior**: 以 instructional 负责概念拆解、三图叠置读图步骤、公式推导与对比辨析，以 narrative 负责“中国茶出海→雪王全球选址调研员通关考核→巴西圣保罗多元迎客”的情境悬念与情绪收束；标题清晰指向当页学习任务或核心结论。
- **Visual style**: custom
- **Visual Style References**: soft-rounded, swiss-minimal
- **Visual Style Behavior**: 由 soft-rounded 负责亲和圆角卡片（16px 圆角）、胶囊徽章与柔和色块承载课堂活动、卡通对话与景观画廊，由 swiss-minimal 负责严谨模块化栅格、充裕留白与超大号核心数字锚点（如 80 亿、16%−7%=9%），同级卡片保持扁平清爽不堆叠多余阴影。
- **Theme**: 活力雪王·青春调研室；跨页复用顶部双色装饰细带（深海地理蓝＋雪王活力红）与左上角环节胶囊路标建立闯关秩序感。
- **Tone**: 明快亲切、严谨好读、富有初中地理探究活力的公开课视觉基调。

### Color Scheme

| Role | HEX | Purpose |
| --- | --- | --- |
| Background | #FFFDFB | 全页微暖雪白主画布，保证教室投影高对比清晰度 |
| Secondary background | #FFF5F5 | 任务卡、提示框与浅绯雪顶次级容器底色 |
| Primary | #1E3A8A | 深海地理蓝，承载主标题框架、地图边框、公式与严谨地理逻辑 |
| Accent | #E11D48 | 雪王活力红，承载核心数字、活动徽章、推荐标记与关键转折强调 |
| Secondary accent | #15803D | 茶芽翠绿，承载中国茶文化时间线、适宜自然条件与正增长状态 |
| Body text | #1E293B | 深岩灰正文主色，确保后排远距离阅读舒适不刺眼 |
| Secondary text | #64748B | 图注、页脚、辅助提示与次级说明文字 |
| Divider | #E2E8F0 | 卡片描边、表格分隔线与页脚细线 |
| Surface | #FFFFFF | 纯白内容面板与表格内芯底色 |
| Warning | #D97706 | 盲盒悬念、热身算式提示与过渡状态高亮 |

## IV. Typography System

### Font Plan

| Role | Character (Reference) | Primary | English if non-English | Fallback tail |
| --- | --- | --- | --- | --- |
| Title | 清晰圆润人文无衬线粗体 | Microsoft YaHei | Trebuchet MS | sans-serif |
| Body | 端正易读课堂屏显无衬线 | Microsoft YaHei | Trebuchet MS | sans-serif |

- **Title stack**: Microsoft YaHei, Trebuchet MS
- **Body stack**: Microsoft YaHei, Trebuchet MS

### Font Size Hierarchy

| Purpose | Anchor Size (px) |
| --- | ---: |
| Hero | 80 |
| Cover_title | 56 |
| Kpi | 44 |
| Title | 38 |
| Subtitle | 30 |
| Lead | 26 |
| Body | 24 |
| Card_body | 20 |
| Annotation | 18 |
| Footnote | 14 |

## V. Layout Principles

### Deck-wide Direction

- **Hierarchy direction**: 左上环节胶囊与行动标题定焦 → 中部主视觉/原图/对比面板承载核心探究 → 底部结论横幅或页脚收束。
- **Composition tendency**: 依据每页教学任务切换大字视觉锚点、丝带时间轴、左右图文对照、四联画廊轮播与双城对决面板，避免千篇一律均分网格。
- **Cross-page continuity**: 顶部深海蓝＋雪王红窄带与“环节一～五 / 活动一～四”胶囊标识贯穿全套，卡通雪王角色在任命页与转场页呼应出现。
- **Spacing posture**: variable by page rhythm（呼吸页大留白聚焦单句或巨型数字，探究活动页信息紧凑有序）。
- **Spacing anchors**: 48px page margin, 24px block gap, 28px column gutter, 16px corner radius, 34px body leading。

## VI. Icon Usage Specification

- **Primary bundled library**: tabler-filled

| Icon Path | Suitable Scenarios |
| --- | --- |
| tabler-filled/globe | |
| tabler-filled/map-pin | |
| tabler-filled/compass | |
| tabler-filled/bulb | |
| tabler-filled/alert-triangle | |
| tabler-filled/circle-check | |
| tabler-filled/circle-x | |
| tabler-filled/user | |
| tabler-filled/photo | |
| tabler-filled/mountain | |
| tabler-filled/sun | |
| tabler-filled/flag | |
| tabler-filled/scale | |
| tabler-filled/award | |
| tabler-filled/trophy | |
| tabler-filled/star | |
| tabler-filled/heart | |
| tabler-filled/clock | |
| tabler-filled/flame | |
| tabler-filled/droplet | |
| tabler-filled/home | |
| tabler-filled/briefcase | |
| tabler-filled/car | |
| tabler-filled/gift | |
| tabler-filled/sparkles | |

## VIII. Image Resource List

| Filename | Dimensions | Ratio | Purpose | Type | Image pattern | Crop Policy | Acquire Via | Status | Reference | text_policy | page_role |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| image_002.png | 269x439 | 0.61 | P05 图5.4世界人口增长示意教材原图 | Diagram | 左侧纵向完整展示教材金字塔人形地球示意图，与右侧跨度计算表对照 | no-crop | user | Existing | 用户文档提取教材原图 图5.4 世界人口增长示意 | embedded | local |
| image_003.png | 886x412 | 2.15 | P06 世界人口增长三阶段曲线图 | Diagram | 上半幅宽屏完整展示三阶段增长曲线与标注框，下方配基数思辨问题卡 | no-crop | user | Existing | 用户文档提取三阶段世界人口增长曲线图 | embedded | local |
| cover_snowking_globe.jpg | 896x1200 | 0.75 | P01 封面雪王手持地图地球仪主视觉 | Illustration | 右侧主视觉框完整展示雪王地球仪插画，下方衔接四大通关任务卡 | no-crop | user | Existing | 用户已上传至 assets/cover_snowking_globe.jpg | none | local |
| snowking_surveyor_cute.jpg | 1024x1024 | 1.00 | P03/P07 可爱版雪王选址调研员卡通形象 | Illustration | 左侧方框完整展示卡通雪王立绘，与右侧对话气泡互动 | no-crop | user | Existing | 用户已上传至 assets/snowking_surveyor_cute.jpg | none | local |
| map_world_pop_density.png | 800x480 | 1.67 | P09/P13/P21 标准世界人口密度分布图占位 | Map | 主图区标准地图虚线图框（严守国家版图红线，供嵌入教材原图） | no-crop | placeholder | Placeholder | 2024人教版七上《世界人口分布图》标准教材原图占位 | embedded | local |
| dense_01_east_asia.jpg | 1024x1024 | 1.00 | P10/P13 亚洲东部稠密区平原景观 | Photography | P10 四联画廊第1张及 P13 1号盲盒景观缩略图 | no-crop | user | Existing | 用户已上传至 assets/dense_01_east_asia.jpg | none | local |
| dense_02_south_asia.jpg | 1024x1024 | 1.00 | P10 亚洲南部稠密区平原水网景观 | Photography | P10 四联画廊第2张 | no-crop | user | Existing | 用户已上传至 assets/dense_02_south_asia.jpg | none | local |
| dense_03_west_europe.jpg | 1024x1024 | 1.00 | P10/P13 欧洲西部稠密区平原与河港城市 | Photography | P10 四联画廊第3张及 P13 2号盲盒景观缩略图 | no-crop | user | Existing | 用户已上传至 assets/dense_03_west_europe.jpg | none | local |
| dense_04_east_na.jpg | 1024x1024 | 1.00 | P10 北美洲东部稠密区海岸城市景观 | Photography | P10 四联画廊第4张 | no-crop | user | Existing | 用户已上传至 assets/dense_04_east_na.jpg | none | local |
| sparse_01_sahara.jpg | 1024x1024 | 1.00 | P11/P13 撒哈拉沙漠极端干旱景观 | Photography | P11 四联画廊第1张及 P13 3号盲盒景观缩略图 | no-crop | user | Existing | 用户已上传至 assets/sparse_01_sahara.jpg | none | local |
| sparse_02_amazon.jpg | 1024x1024 | 1.00 | P11/P13 亚马孙热带雨林极端湿热景观 | Photography | P11 四联画廊第2张及 P13 4号盲盒景观缩略图 | no-crop | user | Existing | 用户已上传至 assets/sparse_02_amazon.jpg | none | local |
| sparse_03_arctic.jpg | 1024x1024 | 1.00 | P11/P13 高纬度极地冰原终年严寒景观 | Photography | P11 四联画廊第3张及 P13 6号盲盒景观缩略图 | no-crop | user | Existing | 用户已上传至 assets/sparse_03_arctic.jpg | none | local |
| sparse_04_tibet.jpg | 1024x1024 | 1.00 | P11/P13 青藏高原地势高峻高寒景观 | Photography | P11 四联画廊第4张及 P13 5号盲盒景观缩略图 | no-crop | user | Existing | 用户已上传至 assets/sparse_04_tibet.jpg | none | local |
| queue_young_busy.png | 1376x768 | 1.79 | P15 稠密区城市A年轻人排长队火爆门店 | Photography | 左侧卡片 16:9 展示年轻顾客排队实景 | adaptive | user | Existing | 用户已上传至 assets/queue_young_busy.png.png | none | local |
| queue_elderly_quiet.jpg | 1376x768 | 1.79 | P15 稠密区城市B中老年行人冷清门店 | Photography | 右侧卡片 16:9 展示中老年行人街区冷清门店 | adaptive | user | Existing | 用户已上传至 assets/queue_elderly_quiet.jpg | none | local |
| sao_paulo_diverse_queue.jpg | 1024x1024 | 1.00 | P22 2026年4月巴西圣保罗店各肤色顾客排队实景 | Photography | 左侧卡片方框完整展示多元人种排队实景 | no-crop | user | Existing | 用户已上传至 assets/sao_paulo_diverse_queue.jpg | none | local |

## IX. Content Outline

### Part 1: 茶韵破冰与调研员集结（导入与角色任命）

#### Slide 01 - 课题封面与借班破冰

- **Audience move**: 陌生借班观望 → 被“雪王选址秘密大公开”吸引，消除距离感进入课堂互动
- **Relationships**: 课题主标题《雪王选址秘密大公开——人口与人种》、教材定位与破冰双问之间的引导关系（order）
- **Cover impact**: 以“一杯中国茶饮如何开遍全球”制造悬念钩子；左侧大字标题与破冰互动卡，右侧雪王地球仪视觉框
- **Composition**: 左重右轻非对称封面构图，左侧课题大标题与小王老师破冰提问卡，右侧雪王全球选址视觉占位框
- **Title**: 雪王选址秘密大公开——人口与人种
- **Core message**: 借熟悉的中国茶饮品牌开启世界人口与人种的地理探究之旅
- **Content**: 课题《雪王选址秘密大公开——人口与人种》 · 2024秋人教版七年级上册第五章第一节 · 主讲：小王老师 · 破冰互动：见过蜜雪冰城的请举手，喝过奶茶的点点头
- **Images**: `cover_snowking_globe.png` 置于右侧主视觉框

#### Slide 02 - 中国茶发展史与新茶饮出海（对应 ppt 01）

- **Audience move**: 仅把蜜雪冰城当作日常零食 → 认识到中国茶走向世界的百年底蕴与选址智慧
- **Relationships**: 17-19世纪茶叶贸易 → 1886年出口13.4万吨占全球80% → 1997年创立与2018年出海 → 当代全球门店扩张的时序演进关系（order）
- **Composition**: 贯穿全宽的茶绿色丝绸飘带曲线串联四个历史节点卡片，点缀茶叶矢量纹样
- **Title**: 一叶中国茶走向世界：从百年茶贸到雪王出海
- **Core message**: 中国茶饮风靡海外既靠世界对中国茶的文化认同，更靠科学的地理选址智慧
- **Content**: 17—19世纪：茶叶成为中国影响世界最重要商品之一，19世纪饮茶成为世界性文化现象 · 1886年：中国茶叶出口高达13.4万吨，垄断全球茶叶贸易约80% · 1997—2018年：蜜雪冰城创立并于越南河内开出海外首店 · 如今：中国奶茶品牌开遍海外，靠文化认同更靠选址智慧

#### Slide 03 - 雪王调研员角色任命与通关悬念（对应 ppt 02）

- **Audience move**: 普通听课学生 → 正式代入“雪王全球选址调研员”身份，明确通关目标
- **Relationships**: 总部选址督导（小王老师）与全球选址调研员（全体同学）及终极奖励“雪王认可奖”之间的任务契约关系（link）
- **Composition**: 左侧可爱版动漫卡通雪王调研员形象框，右侧超大号对话气泡与四关考核徽章条
- **Title**: 全球选址调研员集结令：通过考验赢取专属纪念品！
- **Core message**: 化身雪王全球选址调研员，用地理眼光闯过四重考核赢取“雪王认可奖”
- **Content**: 角色任命：小王老师化身总部选址督导，全体同学受聘为全球选址调研员 · 雪王寄语：“只有通过我的重重考验，才能获得专属纪念品——雪王认可奖！” · 通关路线：看人口总量 → 找稠密选址 → 算增长活力 → 敬多元人种
- **Images**: `snowking_surveyor_cute.png` 置于左侧卡通立绘区

### Part 2: 环节一 · 世界人口数量与增长趋势（80亿大盘）

#### Slide 04 - 世界人口 80 亿里程碑（对应 ppt 03）

- **Audience move**: 对全球人口规模概念模糊 → 震撼感知 80 亿庞大客群基数与调研员愿景
- **Relationships**: 2022年11月15日世界人口达80亿里程碑与“人人都喝蜜雪冰城”调研愿景之间的因果激励关系（link）
- **Composition**: 中央巨型高对比“80亿”视觉焦点数字，上方联合国时间锚点胶囊，下方调研员灵魂提问与愿景横幅
- **Title**: 世界人口正式突破 80 亿大关！
- **Core message**: 2022年11月15日世界人口达到80亿，庞大的全球人口是市场潜力的总基石
- **Content**: 2022年11月15日联合国宣布世界人口正式达到 80 亿 · 超大视觉锚点：80 亿人口 · 调研员灵魂一问：作为雪王调研员，我们最希望看到的画面是什么？——人人都喝蜜雪冰城！

#### Slide 05 - 心算接力：每增加10亿人口经历的时间（对应 ppt 04）

- **Audience move**: 看到人口数字罗列 → 亲手心算时间间隔，发现每增10亿耗时急剧缩短的规律
- **Relationships**: 左侧图5.4年份节点（1830—2022）与右侧每增加10亿所经历年数（100→30→15→12→12→12→11）的一一映射计算关系（link）
- **Composition**: 左窄右宽双栏对照，左侧完整展示教材图5.4原图，右侧为7行高对比填表（绿色答案列支持点击揭示）
- **Title**: 算一算：世界人口每增加 10 亿经历了多少年？
- **Core message**: 从100年缩短至11年，世界人口每增加10亿所需时间显著缩短
- **Content**: 任务指令：计算世界人口从1830年开始，每增加10亿所经历的时间并填入表中 · 表格数据：10-20亿(100年) / 20-30亿(30年) / 30-40亿(15年) / 40-50亿(12年) / 50-60亿(12年) / 60-70亿(12年) / 70-80亿(11年)
- **Images**: `image_002.png` 左侧无裁剪完整展示
- **Motion suggestion**: 右侧表格中的绿色时间答案数值在教师点击时浮现揭示，配合全班心算对答案

#### Slide 06 - 世界人口增长曲线与“基数大”思辨（对应 ppt 05）

- **Audience move**: 误以为增速放缓代表新增人数变少 → 读懂三阶段曲线并顿悟“人口基数大”效应
- **Relationships**: 18世纪前缓慢、工业革命后加快、二战后迅速增长三阶段曲线（order）与近年增速放缓但净增仍多（contrast）的辩证关系
- **Composition**: 上方宽幅展示三阶段人口增长曲线原图，下方并列核心追问卡与“人口基数庞大”点拨卡
- **Title**: 读曲线辨趋势：增速放缓，为何每年新增人口依然很多？
- **Core message**: 18世纪前增长缓慢、二战后迅速增长；近年增速虽放缓，但因人口总基数庞大，每年净增人数依然可观
- **Content**: 三阶段特征：18世纪以前十分缓慢 → 工业革命后大大加快 → 第二次世界大战后迅速增长 · 核心追问：近些年来世界人口增长速度已经放缓，为什么每年地球上新增加的人口数量仍然很多？ · 地理揭秘：总人口基数太大（80亿大底盘），哪怕增长率放缓，每年净增绝对数量依然很多
- **Images**: `image_003.png` 上半幅无裁剪完整展示

### Part 3: 环节二 · 世界人口的空间分布与密度辨析

#### Slide 07 - 雪王选址之问：第一站店开在哪里？（对应 ppt 06）

- **Audience move**: 知道全球有80亿人 → 思考门店落地的空间选择：顾客多的地方优先开店
- **Relationships**: “开遍全球的梦想”与“脚踏实地先去顾客稠密区开店”之间的策略递进关系（link）
- **Composition**: 居中偏左可爱雪王卡通形象配醒目演讲气泡，底部亮色选址口诀横幅
- **Title**: 选址第一问：脚踏实地，我们先把店开在哪里？
- **Core message**: 想要生意做得好，顾客不能少——世界人口分布不均，选址首先要找人口稠密区
- **Content**: 雪王心声：“开遍全球是我们的梦想，但是要脚踏实地一步一步做起，大家觉得我们将店开在哪里合适呢？” · 选址铁律：想要生意做得好，顾客不能少！哪里顾客多，我们就先去哪里！
- **Images**: `snowking_surveyor_cute.png` 卡通形象呼应出场

#### Slide 08 - 小组活动一：三图叠置探寻分布规律（对应 ppt07）

- **Audience move**: 单纯看一张人口图记地名 → 掌握地理核心技能“三图叠置法”自主探究分布规律
- **Relationships**: 《世界人口分布图》《世界地形图》《世界气候类型图》三张图层叠置比对导出分布规律的并列综合关系（overlap）
- **Composition**: 上方小组活动一任务令横幅，下方三张叠置地图示意卡加右侧探究目标清单
- **Title**: 小组活动一：三图叠置，寻找人口稠密与稀疏规律
- **Core message**: 将人口分布图与地形图、气候类型图叠置对比，从自然要素中找出人口分布规律
- **Content**: 活动指令：拿出资料包，将《世界人口分布图》《世界地形图》《世界气候类型图》放在一起比对 · 任务目标①：圈出世界四大人口稠密区与四大人口稀疏区 · 任务目标②：归纳它们各自的分布规律与自然条件

#### Slide 09 - 读世界人口密度分布图：双问破译成因（对应 ppt08）

- **Audience move**: 找到图上颜色深浅区域 → 结合地形、海陆、气候三把尺子解释稠密与稀疏原因
- **Relationships**: 世界人口密度空间格局与“稠密区成因（地形+海陆+气候）”“稀疏区极端成因”两组问题之间的证据推导关系（link）
- **Composition**: 左侧大幅《世界人口密度分布图》标准原图框，右侧上下双问题引导卡（含三要素锦囊标签）
- **Title**: 读《世界人口密度分布图》：找位置 · 析成因
- **Core message**: 从地形、海陆位置与气候三个维度解开世界人口“四密四疏”的空间密码
- **Content**: 标准底图区：《世界人口密度分布图》（教材原图/标准地图） · 问题1：找出人口比较稠密的地区并分析原因（提示：地形＋海陆＋气候） · 问题2：找出人口稀疏的地区并分析是哪些极端自然条件导致的
- **Images**: `map_world_pop_density.png` 置于左侧主图框

#### Slide 10 - 人口稠密区自然景观画廊（对应 ppt09）

- **Audience move**: 地图上的抽象色块 → 直观感受四大稠密区平坦沃野与温暖宜人的自然风貌
- **Relationships**: 亚洲东部、亚洲南部、欧洲西部、北美洲东部四幅稠密区自然景观的并列展示关系（membership）
- **Composition**: 横向四联胶片画廊卡片并排展开，每张配地理位置角标与地形气候特征短签
- **Title**: 视觉巡礼：世界人口稠密区的自然景观
- **Core message**: 四大稠密区普遍呈现地势平坦、水源充足、温暖湿润的宜居自然风貌
- **Content**: ①亚洲东部：季风温和、冲积平原广布 · ②亚洲南部：恒河—印度河平原、水热充足 · ③欧洲西部：温带海洋性气候、平原辽阔 · ④北美洲东部：近海平原、气候温和湿润
- **Images**: `gallery_dense_landscapes.png` 四联画廊占位展示
- **Motion suggestion**: 四张稠密区自然景观卡片按从左到右顺序依次平滑滑入展示，呈现滚动播放视觉效果

#### Slide 11 - 人口稀疏区自然景观画廊（对应 Ppt10）

- **Audience move**: 感受宜居平原之后 → 强烈对比沙漠、雨林、高纬冰原与高寒高原的严酷生存挑战
- **Relationships**: 干旱荒漠、湿热雨林、终年严寒极地、地势高峻高原四类极端自然景观的并列对照关系（membership）
- **Composition**: 与上一页形成镜像对比的四联胶片画廊卡片，配极端自然限制警示角标
- **Title**: 视觉巡礼：世界人口稀疏区的自然景观
- **Core message**: 极端干旱、过于湿热、终年严寒与高峻缺氧限制了人类大规模定居
- **Content**: ①撒哈拉沙漠：极端干旱缺水 · ②亚马孙热带雨林：气候过于湿热、丛林密布 · ③北极高纬地区：终年严寒冰封 · ④青藏高原：地势高峻、高寒缺氧
- **Images**: `gallery_sparse_landscapes.png` 四联画廊占位展示
- **Motion suggestion**: 四张稀疏区自然景观卡片按从左到右顺序依次平滑滑入展示，呈现滚动播放视觉效果

#### Slide 12 - 归纳总结：人口稠密区与稀疏区共性特点（对应 PPT11）

- **Audience move**: 看完地图与8幅景观 → 结构化提炼“四密四疏”的地理共性规律，形成板书级记忆
- **Relationships**: 人口稠密区共性特点（中低纬·沿海平原·温暖湿润）与人口稀疏区共性特点（干旱·湿热·高纬严寒·高原高寒）的正反对比关系（contrast）
- **Composition**: 左右对称双阵营高对比总览面板，左翠绿宜居卡、右警示橙红限制卡，底部选址结论收口
- **Title**: 规律总结：人口稠密区 vs 人口稀疏区共性特点
- **Core message**: 中低纬沿海平原温暖湿润造就“四密”，四类极端自然环境导致“四疏”
- **Content**: 人口稠密区共性特点：亚洲东部、亚洲南部、欧洲西部、北美洲东部 → 中低纬度、沿海平原地区、气候温暖湿润 · 人口稀疏区共性特点：极端干旱的沙漠地区、气候过于湿热的雨林地区、终年严寒的高纬度地区、地势高峻的高原山区

#### Slide 13 - 小组活动二：总部 6 个盲盒待选点排雷（对应 PPT12）

- **Audience move**: 刚归纳完四密四疏规律 → 立即化身选址官对全球6个盲盒坐标点做实战推荐或否决
- **Relationships**: 中央世界人口密度图上的①—⑥号坐标落点与周围6张地点+自然景观盲盒卡的空间对应与选址裁定关系（link）
- **Composition**: 中央标准世界人口密度分布图框标出①—⑥号点位，左右两侧各环绕3张带景观缩略框的盲盒待选卡
- **Title**: 小组活动二：6 个盲盒待选点，推荐开店还是否决？
- **Core message**: 运用“四密四疏”规律精准推荐①河内/雅加达、②伦敦/巴黎，果断否决③④⑤⑥极端自然区
- **Content**: 活动任务：总部发来6个盲盒待选点，分析是否推荐开店并说明地理理由 · ①越南河内/印尼雅加达（推荐·亚南/东南亚稠密区） · ②欧洲西部伦敦/巴黎（推荐·温带沿海平原稠密区） · ③撒哈拉沙漠腹地（否决·极端干旱） · ④亚马孙热带雨林深处（否决·过于湿热） · ⑤青藏高原无人区（否决·地势高峻高寒） · ⑥北极圈格陵兰岛（否决·终年严寒）
- **Images**: `map_world_pop_density.png` 中央地图标注6个位置并环绕自然景观小框

#### Slide 14 - 易混淆概念辨析：人口密度大 ＝ 总人口多吗？（对应 PPT13）

- **Audience move**: 容易把“密”等同于“总人数最多” → 掌握人口密度计算公式，厘清疏密程度与人口总数的本质区别
- **Relationships**: 误区设问、人口密度公式（总人口÷面积）与“只反映疏密程度≠人口多少”结论之间的辨析纠偏关系（contrast）
- **Composition**: 顶部灵魂拷问警示条，中部醒目公式大卡，下方小国高密度反例直观图解（小面积高密度 vs 大面积总数多）
- **Title**: 易混淆辨析：人口密度大，国家总人口就一定多吗？
- **Core message**: 人口密度＝总人口÷面积（人/平方千米），它只反映人口疏密程度，绝不等于人口总数的多少
- **Content**: 灵魂追问：是不是只要人口密度大，这个国家的总人口就很多？（错！） · 核心公式：人口密度 ＝ 总人口 ÷ 面积（单位：人/平方千米） · 关键结论：人口密度只反映疏密程度，不能等于人口多少（例：新加坡面积狭小，人口密度极高，但总人口远少于中国、印度）

### Part 4: 环节三 · 人口自然增长率与人口问题（人地协调观）

#### Slide 15 - 新的选址困惑：同在稠密区，排队为何冷热悬殊？（对应 PPT14）

- **Audience move**: 以为只要挑人口稠密区开店就稳赚 → 看见两家门店排队反差，意识到“年龄结构与人口增长活力”的关键作用
- **Relationships**: 门店A（门口年轻人排长队）与门店B（门口无人排队、往来多为中老年人）在同属人口稠密区前提下的反差关系（contrast）
- **Composition**: 左右50:50强烈视觉对比图框，中央醒目“VS”与追问气泡点出“年轻人占比→人口增长率”
- **Title**: 怪事发生了：同样位于人口稠密区，门店为何冷热悬殊？
- **Core message**: 奶茶消费主力是年轻人；同为稠密区却冷热不均，背后藏着人口年龄结构与人口增长率的秘密
- **Content**: 左图场景：位于人口稠密区，蜜雪冰城门口年轻人排起长队，生意火爆 · 右图场景：同样位于人口稠密区，门店门口冷清无人，来往行人大多是中老年人 · 督导点拨：买奶茶主力是年轻人！选址还要看一个新指标——人口自然增长率
- **Images**: `mixue_queue_contrast.png` 左右双景对比占位

#### Slide 16 - 人口自然增长率公式与三种变化状态（对应 PPT15）

- **Audience move**: 初识“人口自然增长率”名词 → 从课本找到公式并读懂 >0、=0、<0 三种状态的人口含义
- **Relationships**: 人口自然增长率＝出生率−死亡率（parent）派生出大于0、等于0、小于0三种人口变化状态（membership）
- **Composition**: 上方课本公式横幅大卡，下方并列三张色标状态卡（绿>0增加/年轻多、灰蓝=0不变、红<0负增长/老龄化）
- **Title**: 课本寻宝：人口自然增长率怎么算？代表什么趋势？
- **Core message**: 人口自然增长率＝出生率−死亡率，其正、零、负直接决定总人口增减与年轻/老龄化特征
- **Content**: 核心公式：人口自然增长率 ＝ 出生率 − 死亡率 · 当自然增长率 ＞ 0：总人数在增加，此时一般年轻人较多 · 当自然增长率 ＝ 0：总人数保持不变（零增长） · 当自然增长率 ＜ 0：人口出现负增长，总人数减少，老龄化现象出现

#### Slide 17 - 热身算一算：16% 与 7% 的增长率快算（对应 PPT16）

- **Audience move**: 刚背完公式 → 当堂动口心算热身题，熟练判断自然增长率数值与总人口变化方向
- **Relationships**: 已知出生率16%与死亡率7%代入公式得出自然增长率9%＞0并推出人口总数增加的推导关系（order）
- **Composition**: 上方大字号题目卡片，下方分两步点击揭示的计算过程与人口变化结论卡
- **Title**: 热身算一算：动手算出自然增长率！
- **Core message**: 出生率16%减去死亡率7%等于9%（＞0），该地人口总数正在增加
- **Content**: 热身题目：某地出生率为 16%，死亡率为 7%，那该地的自然增长率是多少呢？人口总数怎么变化？ · 点击揭晓算式：自然增长率 ＝ 16% − 7% ＝ 9% · 点击揭晓结论：因为 9% ＞ 0，所以该地人口总数不断增加！
- **Motion suggestion**: 下方算式结果“16% − 7% ＝ 9%”与“人口总数增加”结论卡在教师提问后点击浮现

#### Slide 18 - 小组活动三：东京 vs 雅加达，哪座城市雪王开得更多？（对应 PPT17）

- **Audience move**: 掌握计算方法后 → 结合真实人口数据裁定印尼雅加达与日本东京的门店扩张差异并讲清地理理由
- **Relationships**: 印尼雅加达（+9‰、年轻群体多）与日本东京（−7‰、65岁以上近30%、老龄化严重）的数据对比导出选址结果差异（contrast）
- **Composition**: 顶部总部考题横幅，下方左右双城PK数据卡（左印尼雅加达活力红绿卡 vs 右日本东京银发蓝灰卡）及底部裁定结论条
- **Title**: 活动三：同在稠密区，日本东京 vs 印尼雅加达谁开店更多？
- **Core message**: 雅加达自然增长率+9‰年轻客群庞大故门店远多于负增长（−7‰）且老龄化近30%的日本东京
- **Content**: 总部考题：同样在人口稠密区的日本东京和印度尼西亚雅加达，根据材料判断哪座城市的雪王开得更多？说出理由 · 印度尼西亚雅加达数据：人口自然增长率 +9‰ → 年轻群体多，茶饮市场需求旺盛（开店更多！） · 日本东京数据：人口自然增长率 −7‰，65岁以上老年人口占比近 30% → 老龄化严重，年轻人少，冰饮需求弱

#### Slide 19 - 延伸探究：人口增长过快与过慢的社会影响（对应 PPT18）

- **Audience move**: 从奶茶开店一隅 → 跳出商业视角，全面认识人口增长过快与过慢对资源、环境与社会经济的深远影响
- **Relationships**: 人口增长过快引发的三大压力（交通拥堵/住房紧张/就业压力大）与增长过慢引发的四大困境（老龄化/消费下滑/兵源不足/养老负担重）的双向警示对比（contrast）
- **Composition**: 左右天平失衡式双栏图文卡片，左栏3项过快问题配图标与场景示意，右栏4项过慢问题配图标与场景示意
- **Title**: 跳出奶茶看世界：人口增长过快或过慢会带来哪些问题？
- **Core message**: 人口增长过快导致交通、住房与就业紧张；增长过慢引发老龄化、消费下滑、兵源不足与养老重负
- **Content**: 核心设问：人口自然增长率除了对奶茶营销有影响外，对社会其他方面有怎样的影响？ · 增长过快的问题：交通拥堵 · 住房紧张 · 就业压力大 · 增长过慢的问题：人口老龄化 · 消费活力下滑 · 国防兵源不足 · 社会养老负担加重

#### Slide 20 - 核心价值落点：人口增长要与发展相协调（对应 PPT19）

- **Audience move**: 看到过快和过慢都有弊端 → 水到渠成凝练出本课核心“人地协调观”金句
- **Relationships**: 人口数量增长与资源环境承载力、社会经济发展水平之间的动态平衡协调关系（link）
- **Composition**: 大留白呼吸感中心构图，中央天平协调徽章托起超大号核心金句，下方配简洁双翼平衡批注
- **Title**: 理想的人口发展之道
- **Core message**: 人口增长既不是越快越好，也不是越慢越好，必须与资源环境相协调、与社会经济发展相适应
- **Content**: 核心金句：人口增长要与发展相协调 · 具体内涵：人口的增长必须与资源、环境相协调，与社会、经济发展相适应（因国制宜调整人口政策）

### Part 5: 环节四与环节五 · 全球选址终极实战与多元人种平等升华

#### Slide 21 - 小组活动四：圈画预测雪王全球选址并登台对比（对应 PPT20）

- **Audience move**: 学完分布与增长率两把尺子 → 亲手在世界人口分布图上圈画预测雪王全球选址，登台验证赢得“雪王认可奖”
- **Relationships**: 学生圈画预测的《世界人口分布图》与真实《雪王全球分布图》之间的综合迁移验证关系（overlap）
- **Composition**: 上方活动四任务与领奖激励条，中部左右并列《世界人口分布图》与《雪王全球门店分布图》双图框，底部督导双尺提醒横幅
- **Title**: 活动四：猜一猜、圈一圈——雪王在全球会选址在哪里？
- **Core message**: 综合运用“人口疏密程度＋人口自然增长率正负”双维度圈画全球选址，验证地理学以致用的威力
- **Content**: 终极挑战：根据所学知识预测雪王全球开店选址，圈画到《世界人口分布图》上并上讲台对比展示（吻合度最高获“雪王认可奖”！） · 左图：《世界人口分布图》圈画区 · 右图：《雪王全球门店分布对比图》（东南亚密集、美墨巴沿海大城新店等） · 教师提醒：选址既要考虑人口稠密程度（地形、气候、海陆位置），又要考虑人口自然增长率（正还是负？）
- **Images**: `map_world_pop_density.png` 双图并置对比展示

#### Slide 22 - 巴西圣保罗店迎客之道：各人种一律平等（对应 PPT21）

- **Audience move**: 完成商业选址考核 → 在2026年4月圣保罗店多元排队画面中领悟人种环境适应性与“各民族各人种一律平等”的胸怀
- **Relationships**: 2026年4月巴西圣保罗店各肤色顾客排队现象、人种体质差异源于自然环境适应的科学解释、各民族各人种一律平等价值升华与雪王口号收官的层进关系（order）
- **Closing impact**: 以“你爱我，我爱你——各美其美，一律平等；商业看热闹，地理看门道”温暖有力收官；左侧圣保罗排队实景框，右侧科学定论与平等宣言大卡
- **Composition**: 左侧2026年4月巴西圣保罗店多元肤色排队实景占位框，右侧科学认知卡＋“各人种一律平等”金句卡，底部雪王口号收官横幅
- **Title**: 全球迎客必修课：尊重多元文化，世界各人种一律平等！
- **Core message**: 人种体质差异只是适应自然环境的结果，绝无高低优劣之分；世界各民族、各人种一律平等、各美其美
- **Content**: 真实一幕：2026年4月巴西圣保罗门店门口长队中汇聚着各种肤色的顾客 · 科学认知：人种的体质差异只是长期适应自然环境的结果，绝无高低优劣之分 · 价值宣言：世界各民族、各人种一律平等、各美其美，跨国经营须尊重当地习俗与文化 · 温暖收官：“你爱我，我爱你”——商业看热闹，地理看门道，感谢各位优秀调研员！
- **Images**: `sao_paulo_diverse_queue.png` 置于左侧实景框

## X. Speaker Notes Requirements

- **Generation**: enabled
- **Filename**: match each SVG filename under `notes/`
- **Content**: 严格依据用户提供的《逐页口播讲稿.docx》逐页切分对应，统一活动序号为“活动一～活动四”，完整保留热身题 16% 与 7% 口径，并补充简明翻页/动画点击与借班控场提示
- **Total duration**: 45 minutes
- **Notes style**: conversational, interactive classroom teaching script
- **Presentation purpose**: 支撑小王老师 45 分钟初中地理借班公开课现场自然脱稿授课与课堂互动控场
