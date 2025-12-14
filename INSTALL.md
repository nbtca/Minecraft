# 安装和运行指南

## 📋 系统要求

- Node.js 14.18+ 或 16+
- npm 或 yarn 或 pnpm

## 🔧 安装 Node.js

### Ubuntu/Debian

```bash
# 方法一：使用 apt（推荐用于开发环境）
sudo apt update
sudo apt install nodejs npm

# 方法二：使用 NodeSource（获取最新版本）
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs
```

### 其他 Linux 发行版

```bash
# 使用 nvm（Node Version Manager）
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
nvm install 18
nvm use 18
```

### 验证安装

```bash
node --version
npm --version
```

## 📦 安装项目依赖

在项目根目录运行：

```bash
npm install
```

或使用其他包管理器：

```bash
# 使用 yarn
yarn install

# 使用 pnpm
pnpm install
```

## 🚀 运行开发服务器

### 启动开发服务器

```bash
npm run dev
```

服务器将在 `http://localhost:8080` 启动（端口可能不同）。

### 构建生产版本

```bash
npm run build
```

构建后的文件将在 `docs/.vuepress/dist` 目录中。

## 🌐 部署

### 部署到 GitHub Pages

1. 在项目根目录创建 `.github/workflows/deploy.yml`
2. 推送到 GitHub
3. 在仓库设置中启用 GitHub Pages

### 部署到其他平台

- **Netlify** - 连接 Git 仓库，自动部署
- **Vercel** - 支持自动部署和预览
- **自建服务器** - 使用 nginx 或其他 Web 服务器

## 🛠️ 开发技巧

### 实时预览

开发服务器支持热重载，修改文件后会自动刷新浏览器。

### 调试

如果遇到问题：

1. 检查 Node.js 版本是否符合要求
2. 删除 `node_modules` 和 `package-lock.json`，重新安装
3. 清除 VuePress 缓存：删除 `docs/.vuepress/.cache` 和 `docs/.vuepress/.temp`

### 常见问题

**端口被占用**
```bash
# 修改端口
npm run dev -- --port 3000
```

**构建失败**
```bash
# 清除缓存后重试
rm -rf docs/.vuepress/.cache docs/.vuepress/.temp
npm run build
```

## 📝 下一步

安装完成后，你可以：

1. 浏览 Wiki 内容
2. 添加自己的文档
3. 自定义主题和配置
4. 部署到生产环境

---

::: tip 提示
如果你在 Linux 系统上，推荐使用以下命令快速安装 Node.js：
```bash
sudo apt update && sudo apt install -y nodejs npm
```
:::
