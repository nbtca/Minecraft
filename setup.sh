#!/bin/bash

# 快速安装脚本 - Minecraft 生电服务器 Wiki

echo "=========================================="
echo " Minecraft 生电服务器 Wiki - 安装脚本"
echo "=========================================="
echo ""

# 检查 Node.js
echo "检查 Node.js..."
if ! command -v node &> /dev/null; then
    echo "❌ 未检测到 Node.js"
    echo ""
    echo "请先安装 Node.js："
    echo "  Ubuntu/Debian: sudo apt update && sudo apt install -y nodejs npm"
    echo "  或访问: https://nodejs.org/"
    echo ""
    exit 1
fi

NODE_VERSION=$(node --version)
echo "✅ Node.js 已安装: $NODE_VERSION"

# 检查 npm
echo "检查 npm..."
if ! command -v npm &> /dev/null; then
    echo "❌ 未检测到 npm"
    echo "请安装 npm: sudo apt install npm"
    exit 1
fi

NPM_VERSION=$(npm --version)
echo "✅ npm 已安装: $NPM_VERSION"
echo ""

# 安装依赖
echo "安装项目依赖..."
npm install

if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "✅ 安装完成！"
    echo "=========================================="
    echo ""
    echo "运行以下命令启动开发服务器："
    echo "  npm run dev"
    echo ""
    echo "或构建生产版本："
    echo "  npm run build"
    echo ""
else
    echo ""
    echo "❌ 安装失败，请检查错误信息"
    exit 1
fi
