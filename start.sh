#!/bin/bash

# Minecraft 生电服务器 Wiki - 快速启动指南

echo "======================================"
echo "  Minecraft 生电服务器 Wiki"
echo "  Quick Start Guide"
echo "======================================"
echo ""

# 检查是否在正确的目录
if [ ! -f "package.json" ]; then
    echo "❌ 错误：请在项目根目录运行此脚本"
    echo "提示：cd /home/a/Minecraft"
    exit 1
fi

echo "📋 检查环境..."
echo ""

# 检查 Node.js
if ! command -v node &> /dev/null; then
    echo "❌ 未安装 Node.js"
    echo ""
    echo "请运行以下命令安装："
    echo "  sudo apt update"
    echo "  sudo apt install -y nodejs npm"
    echo ""
    exit 1
else
    echo "✅ Node.js: $(node --version)"
fi

# 检查 npm
if ! command -v npm &> /dev/null; then
    echo "❌ 未安装 npm"
    echo "请运行: sudo apt install npm"
    exit 1
else
    echo "✅ npm: $(npm --version)"
fi

echo ""

# 检查依赖
if [ ! -d "node_modules" ]; then
    echo "📦 未发现依赖，开始安装..."
    echo ""
    npm install
    
    if [ $? -ne 0 ]; then
        echo ""
        echo "❌ 依赖安装失败"
        exit 1
    fi
    echo ""
    echo "✅ 依赖安装成功"
else
    echo "✅ 依赖已安装"
fi

echo ""
echo "======================================"
echo "✅ 环境检查完成！"
echo "======================================"
echo ""
echo "🚀 启动开发服务器："
echo "   npm run dev"
echo ""
echo "📦 构建生产版本："
echo "   npm run build"
echo ""
echo "📖 查看文档："
echo "   - README.md - 项目说明"
echo "   - INSTALL.md - 详细安装指南"
echo "   - PROJECT_SUMMARY.md - 项目总结"
echo ""
echo "现在运行开发服务器? (y/n)"
read -r response

if [[ "$response" =~ ^[Yy]$ ]]; then
    echo ""
    echo "🚀 启动中..."
    npm run dev
fi
