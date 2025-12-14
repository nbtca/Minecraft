import { defaultTheme } from '@vuepress/theme-default'
import { defineUserConfig } from 'vuepress/cli'
import { viteBundler } from '@vuepress/bundler-vite'

export default defineUserConfig({
  lang: 'zh-CN',
  title: 'Minecraft 生电服务器 Wiki',
  description: '一个专注于 Minecraft 生电技术的知识库',
  base: '/Minecraft/',

  head: [],

  theme: defaultTheme({
    // logo: '/logo.png',  // 如需添加logo，请将logo图片放到 docs/.vuepress/public/ 目录
    navbar: [
      {
        text: '首页',
        link: '/',
      },
      {
        text: '入门指南',
        link: '/guide/',
      },
      {
        text: '红石基础',
        link: '/redstone/',
      },
      {
        text: '农场设计',
        link: '/farms/',
      },
      {
        text: '电路设计',
        link: '/circuits/',
      },
      {
        text: '高级技巧',
        link: '/advanced/',
      },
      {
        text: '服务器规则',
        link: '/rules/',
      },
    ],
    sidebar: {
      '/guide/': [
        {
          text: '入门指南',
          children: [
            '/guide/README.md',
            '/guide/getting-started.md',
            '/guide/basic-concepts.md',
          ],
        },
      ],
      '/redstone/': [
        {
          text: '红石基础',
          children: [
            '/redstone/README.md',
            '/redstone/components.md',
            '/redstone/logic-gates.md',
            '/redstone/timing.md',
          ],
        },
      ],
      '/farms/': [
        {
          text: '农场设计',
          children: [
            '/farms/README.md',
            '/farms/mob-farms.md',
            '/farms/crop-farms.md',
            '/farms/villager-farms.md',
            '/farms/item-farms.md',
          ],
        },
      ],
      '/circuits/': [
        {
          text: '电路设计',
          children: [
            '/circuits/README.md',
            '/circuits/clocks.md',
            '/circuits/memory.md',
            '/circuits/automation.md',
          ],
        },
      ],
      '/advanced/': [
        {
          text: '高级技巧',
          children: [
            '/advanced/README.md',
            '/advanced/optimizations.md',
            '/advanced/quasi-connectivity.md',
            '/advanced/tnt-duping.md',
          ],
        },
      ],
      '/rules/': [
        {
          text: '服务器规则',
          children: [
            '/rules/README.md',
            '/rules/community.md',
            '/rules/building.md',
          ],
        },
      ],
    },
    repo: '',
    editLink: false,
  }),

  bundler: viteBundler(),
})
