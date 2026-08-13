import { defineConfig } from "vitepress";
import { withMermaid } from "vitepress-plugin-mermaid";

export default withMermaid(defineConfig({
  title: "omiyeong",
  description: "AI Agent 平台工程 — 把 AI 从聊天窗口里的助手，变成能进入团队、承担岗位并持续交付的 AI员工",
  lang: "zh-CN",
  cleanUrls: true,
  lastUpdated: true,

  head: [
    ["meta", { property: "og:title", content: "omiyeong — AI Agent 平台工程" }],
    ["meta", { property: "og:description", content: "NiuMa：AI员工平台的架构、取舍与工程实践" }],
  ],

  markdown: {
    lineNumbers: false,
  },

  themeConfig: {
    nav: [
      { text: "Agent Runtime", link: "/runtime/" },
      { text: "AI员工", link: "/employees/" },
      { text: "办公协作", link: "/collaboration/" },
      { text: "Personal Loop", link: "/personal-loop/" },
      { text: "工程笔记", link: "/engineering/" },
      { text: "GitHub", link: "https://github.com/omiyeong" },
    ],

    sidebar: {
      "/runtime/": [
        {
          text: "NiuMa 探索",
          items: [
            { text: "01 · Agent Runtime", link: "/runtime/" },
            { text: "02 · AI员工", link: "/employees/" },
            { text: "03 · 办公协作", link: "/collaboration/" },
            { text: "04 · Personal Loop", link: "/personal-loop/" },
          ],
        },
      ],
      "/employees/": [{ text: "NiuMa 探索", items: [{ text: "01 · Agent Runtime", link: "/runtime/" }, { text: "02 · AI员工", link: "/employees/" }, { text: "03 · 办公协作", link: "/collaboration/" }, { text: "04 · Personal Loop", link: "/personal-loop/" }] }],
      "/collaboration/": [{ text: "NiuMa 探索", items: [{ text: "01 · Agent Runtime", link: "/runtime/" }, { text: "02 · AI员工", link: "/employees/" }, { text: "03 · 办公协作", link: "/collaboration/" }, { text: "04 · Personal Loop", link: "/personal-loop/" }] }],
      "/personal-loop/": [{ text: "NiuMa 探索", items: [{ text: "01 · Agent Runtime", link: "/runtime/" }, { text: "02 · AI员工", link: "/employees/" }, { text: "03 · 办公协作", link: "/collaboration/" }, { text: "04 · Personal Loop", link: "/personal-loop/" }] }],
      "/engineering/": [{ text: "工程笔记", items: [{ text: "工程笔记首页", link: "/engineering/" }, { text: "统一多种 Agent Runtime", link: "/posts/runtime-abstraction" }, { text: "全部设计文档", link: "/specs/" }] }],
      "/posts/": [
        {
          text: "文章",
          items: [
            { text: "统一多种 Agent Runtime", link: "/posts/runtime-abstraction" },
          ],
        },
      ],
      "/specs/": [
        {
          text: "设计文档",
          items: [
            { text: "总览", link: "/specs/" },
            { text: "daemon 架构选型对比", link: "/specs/2026-05-14-wm-vs-slock-daemon-comparison" },
            { text: "adapter 层可行性分析", link: "/specs/2026-05-15-slock-agent-adapter-analysis" },
            { text: "agent 例行任务代理模型", link: "/specs/2026-05-25-agent-routine-proxy" },
            { text: "agent 能力的阶段划分", link: "/specs/2026-05-25-third-stage-agent" },
            { text: "runtime 鉴权检测矩阵", link: "/specs/2026-06-11-runtime-auth-detection-matrix" },
          ],
        },
      ],
    },

    socialLinks: [
      { icon: "github", link: "https://github.com/omiyeong" },
    ],

    outline: { level: [2, 3], label: "本页目录" },
    docFooter: { prev: "上一篇", next: "下一篇" },
    lastUpdatedText: "最后更新",
    darkModeSwitchLabel: "外观",
    returnToTopLabel: "回到顶部",
    sidebarMenuLabel: "菜单",

    footer: {
      message: "内容基于个人项目 NiuMa 的工程实践",
      copyright: "© 2026 omiyeong",
    },
  },
}));
