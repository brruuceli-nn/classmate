<!-- ppt-master-schema: spec-lock/v1 -->
# Execution Lock

## canvas
- format: PPT 16:9
- viewBox: 0 0 1280 720

## communication
- primary_language: zh-CN
- audience: 初中七年级学生（借班公开课现场受众）及听评课地理教研员、评委老师
- objective: 以雪王全球选址调研员主线完成45分钟公开课探究，使学生掌握80亿增长趋势、四密四疏规律、人口密度与自然增长率计算及人地协调与人种平等观念
- core_message: 商业看热闹，地理看门道：选址兼看人口疏密与自然增长率，人口增长须与发展相协调，世界各人种一律平等
- consumption_mode: balanced

## mode
- mode: custom
- mode_references: instructional, narrative
- mode_behavior: 以 instructional 负责概念拆解、三图叠置读图步骤、公式推导与对比辨析，以 narrative 负责“中国茶出海→雪王全球选址调研员通关考核→巴西圣保罗多元迎客”的情境悬念与情绪收束；标题清晰指向当页学习任务或核心结论。

## visual_style
- visual_style: custom
- visual_style_references: soft-rounded, swiss-minimal
- visual_style_behavior: 由 soft-rounded 负责亲和圆角卡片（16px 圆角）、胶囊徽章与柔和色块承载课堂活动、卡通对话与景观画廊，由 swiss-minimal 负责严谨模块化栅格、充裕留白与超大号核心数字锚点（如 80 亿、16%−7%=9%），同级卡片保持扁平清爽不堆叠多余阴影。

## colors
- background: #FFFDFB
- secondary_bg: #FFF5F5
- primary: #1E3A8A
- accent: #E11D48
- secondary_accent: #15803D
- body_text: #1E293B
- secondary_text: #64748B
- divider: #E2E8F0
- surface: #FFFFFF
- warning: #D97706

## typography
- font_family: Microsoft YaHei, Trebuchet MS
- title_family: Microsoft YaHei, Trebuchet MS
- body_family: Microsoft YaHei, Trebuchet MS
- hero: 80
- cover_title: 56
- kpi: 44
- title: 38
- subtitle: 30
- lead: 26
- body: 24
- card_body: 20
- annotation: 18
- footnote: 14

## icons
- library: tabler-filled
- inventory: tabler-filled/globe, tabler-filled/map-pin, tabler-filled/compass, tabler-filled/bulb, tabler-filled/alert-triangle, tabler-filled/circle-check, tabler-filled/circle-x, tabler-filled/user, tabler-filled/photo, tabler-filled/mountain, tabler-filled/sun, tabler-filled/flag, tabler-filled/scale, tabler-filled/award, tabler-filled/trophy, tabler-filled/star, tabler-filled/heart, tabler-filled/clock, tabler-filled/flame, tabler-filled/droplet, tabler-filled/home, tabler-filled/briefcase, tabler-filled/car, tabler-filled/gift, tabler-filled/sparkles

## images
- p05_fig54: images/image_002.png | source=user | crop=no-crop
- p06_curve: images/image_003.png | source=user | crop=no-crop
- p01_cover: images/cover_snowking_globe.jpg | source=user | crop=no-crop
- p03_snowking: images/snowking_surveyor_cute.jpg | source=user | crop=no-crop
- p09_map: images/map_world_pop_density.png | source=placeholder | crop=no-crop
- p10_dense1: images/dense_01_east_asia.jpg | source=user | crop=no-crop
- p10_dense2: images/dense_02_south_asia.jpg | source=user | crop=no-crop
- p10_dense3: images/dense_03_west_europe.jpg | source=user | crop=no-crop
- p10_dense4: images/dense_04_east_na.jpg | source=user | crop=no-crop
- p11_sparse1: images/sparse_01_sahara.jpg | source=user | crop=no-crop
- p11_sparse2: images/sparse_02_amazon.jpg | source=user | crop=no-crop
- p11_sparse3: images/sparse_03_arctic.jpg | source=user | crop=no-crop
- p11_sparse4: images/sparse_04_tibet.jpg | source=user | crop=no-crop
- p15_queue_hot: images/queue_young_busy.png | source=user | crop=adaptive
- p15_queue_cold: images/queue_elderly_quiet.jpg | source=user | crop=adaptive
- p22_saopaulo: images/sao_paulo_diverse_queue.jpg | source=user | crop=no-crop

## page_rhythm
- P01: anchor
- P02: dense
- P03: breathing
- P04: breathing
- P05: dense
- P06: dense
- P07: breathing
- P08: dense
- P09: dense
- P10: dense
- P11: dense
- P12: dense
- P13: dense
- P14: dense
- P15: breathing
- P16: dense
- P17: breathing
- P18: dense
- P19: dense
- P20: anchor
- P21: dense
- P22: anchor

## pptx_structure
- mode: flat

## forbidden
- `mask`, `<style>`, `class`, external CSS, `<foreignObject>`, `textPath`, `@font-face`, `<animate*>`, `<set>`, `<script>` / event attributes, `<iframe>`
- HTML named entities in text; write typography as raw Unicode and escape XML reserved characters
- 可视化html文件我不准备用 (user)
- 就是16%和7%，数值不变 (user)
