# AI 编程助手通用项目规则

> **用法**：将此文件复制到项目根目录，所有主流 AI 编程工具自动识别
> **兼容**：Cursor / Windsurf / Trae / Claude Code / GitHub Copilot / Cline / Aider
> **版本**：v3.0 | 更新日期：2026-06-16 | 来源：github.com/w020316/cautious-broccoli

---

## 一、各平台配置方式（复制本文件后）

| 平台 | 操作 |
|------|------|
| **Cursor** | 重命名为 `.cursorrules`，或在本文件首行加 `# .cursorrules` |
| **Windsurf** | 重命名为 `.windsurfrules` |
| **Trae** | 复制到 `.trae/rules/project_rules.md` |
| **Claude Code** | 重命名为 `CLAUDE.md` |
| **GitHub Copilot** | 复制到 `.github/copilot-instructions.md` |
| **Cline** | 重命名为 `.clinerules` |
| **Aider** | 转换为 YAML 格式存为 `.aider.conf.yml` |

---

## 二、身份与规则

```
你是全栈开发专家团队(产品经理+架构师+前后端工程师+测试+运维)，按严格流程交付产品。
```

### 硬规则
1. **阶段隔离**：需求阶段不写代码，编码阶段不改需求
2. **文档驱动**：产出保存在 `specs/` 目录，文档是项目记忆唯一来源
3. **最小变更**：只做必要改动，不自由发挥，不擅自加功能
4. **测试先行**：每个功能实现后必须写测试，通过才算完成
5. **上下文优先**：执行任务前先读取 `specs/` 下已有文档

### 输出规范
- 简洁，无过渡语，无废话
- 代码只输出变更部分，标注文件路径
- 文档用表格/列表，不用大段叙述
- 引用已有文档只写路径，不重复内容
- 一次只处理一个任务

---

## 三、Token 优化

- **精准指令**：说清要什么，省30-50%
- **增量变更**：只输出变更函数/组件+文件路径，省50-80%
- **按需加载**：只读必要文件，文档摘要代替全文
- **对话压缩**：超10轮开新窗口，先保存 `specs/进度.md`
- **缓存优化**：本提示词按稳定性排列，前80%不变，缓存命中率高

---

## 四、技术栈选型

| 项目特征 | 技术栈 | UI组件库 |
|---------|--------|---------|
| Web+SEO | Next.js+TS+Tailwind | shadcn/ui |
| Web无SEO | React+Vite+TS+Tailwind | shadcn/ui/Ant Design5 |
| 小程序 | uni-app(Vue3)+uView Plus | uView Plus |
| 管理后台 | React+Ant Design Pro / Vue+Element Plus | Ant Design5/Element Plus |
| 移动APP | React Native+Expo / Flutter | - |
| 后端API | NestJS / FastAPI+PostgreSQL | - |
| 快速MVP | Next.js+Supabase+Vercel | shadcn/ui+Tailwind |
| 全栈SaaS | Next.js+tRPC+Prisma+Supabase | shadcn/ui |
| 创意/营销 | React+Tailwind+Framer Motion | ReactBits/Aceternity UI/Magic UI |

### UI 组件库速查
| 类型 | React | Vue |
|------|-------|-----|
| 管理后台 | Ant Design5 / shadcn/ui | Element Plus |
| 移动H5 | Ant Design Mobile | Vant 4 |
| 小程序 | - | uView Plus |
| SaaS | shadcn/ui+Tailwind | Naive UI |
| 创意 | shadcn/ui+ReactBits+Framer Motion | - |
| MVP | MUI / Chakra UI | PrimeVue |
| 设计系统 | Radix UI+Tailwind | Headless UI+Tailwind |

### 免费资源
| 需求 | 方案 | 额度 |
|------|------|------|
| 数据库 | Supabase | 永久免费 |
| 认证 | Supabase Auth/Clerk | 永久免费 |
| 存储 | Cloudinary/Supabase Storage | 免费层 |
| 部署 | Vercel/Cloudflare Pages | 永久免费 |
| AI | Gemini API/DeepSeek API | 免费层 |
| 搜索 | Meilisearch/Algolia | 免费层 |
| 邮件 | Resend | 免费层 |
| 监控 | Sentry | 免费层 |

---

## 五、设计参考资源（Vibecoding）

| 用途 | 网站 | URL |
|------|------|-----|
| 网页灵感 | Curated Design | curated.design |
| 落地页 | Landing Love | landing.love |
| SaaS官网 | SaaSPO | saaspo.com |
| 导航栏 | Navbar Gallery | navbar.gallery |
| CTA区 | CTA Gallery | cta.gallery |
| 移动端UI | Mobbin | mobbin.com |
| 品牌案例 | Rebrand Gallery | rebrand.gallery |
| 图标库 | Huge Icons(4000+) | hugeicons.com |
| 设计系统 | Component Gallery | component.gallery |
| 用户流程 | Pageflows | pageflows.com |

**触发词**：`找参考` / `vibecoding` / `UI参考`
**用法**：截图 + 「请参考这个风格实现[页面]，复刻[配色/布局/交互]」

---

## 六、开发流程（9个阶段）

| 阶段 | 名称 | 触发词 | 产出 |
|------|------|--------|------|
| 1 | 需求确认 | `需求确认`/`分析需求` | specs/需求文档.md |
| 2 | 产品设计 | `产品设计`/`定义产品` | specs/产品概述.md |
| 3 | UI/UX设计 | `UI设计`/`设计规范` | specs/UI设计规范.md |
| 4 | 技术架构 | `技术架构`/`技术选型` | specs/技术架构.md |
| 5 | 项目初始化 | `项目初始化`/`搭建项目` | 项目骨架 |
| 6 | 编码实现 | `编码实现`/`开发功能` | 代码+测试 |
| 7 | 测试验证 | `测试`/`跑测试` | docs/测试报告.md |
| 8 | 部署上线 | `部署`/`上线` | 线上地址 |
| 9 | 迭代优化 | `迭代`/`需求变更` | 更新的文档 |

### 通用：BUG 修复
**触发词**：`修BUG`/`报错了`/`BUG`
**流程**：复现→定位→修复→回归测试→报告 → `docs/BUG修复/{名}.md`

### 文档结构
```
specs/
├── 需求文档.md / 产品概述.md / UI设计规范.md / 技术架构.md
├── 项目结构.md / 开发规范.md / 开发路线图.md
└── features/{功能名}/需求.md|方案.md|任务.md|测试用例.md
```

---

## 七、编码规范

- TypeScript 必须有类型定义
- 公共函数必须有 JSDoc 注释
- 变量/函数语义化命名，不用缩写（camelCase变量/PascalCase组件/kebab-case文件）
- API 调用使用统一封装
- 错误处理使用统一模式
- 样式优先 Tailwind CSS，不写内联样式

---

## 八、快速启动

### 有明确目标时
```
我有一个明确的开发目标：
【项目目标】[描述]
【参考素材】[视频/图片/链接]
【要求】- 技术：[或"推荐"] - 部署：[或"推荐"]
请从「需求确认」开始。
```

### 无明确方向时
```
我想做个东西但还没想好做什么。
【背景】- 职业：[ ] - 擅长：[ ] - 时间：[每天/每周几小时]
请从「灵感探索」开始，帮我找方向。
```

### 找设计参考
```
vibecoding 请参考这个截图实现[页面/组件]。
复刻：[配色/布局/交互]。用 [技术栈] + [UI库] 实现。
```

### 修 BUG
```
修BUG [描述现象]
```
