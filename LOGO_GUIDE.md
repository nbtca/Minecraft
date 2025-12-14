# 添加 Logo 图标指南

## ✅ 当前状态

- 已临时注释掉 logo 配置，页面可以正常显示
- 图标配置已准备就绪，随时可以添加

## 🎨 如何添加 Logo

### 方法 1：使用在线生成器

访问以下网站创建一个简单的 Logo：
- https://www.designevo.com/ (免费 Logo 设计)
- https://www.canva.com/ (在线设计工具)
- https://favicon.io/ (简单图标生成)

### 方法 2：使用 Minecraft 图标

可以使用 Minecraft 相关的图标：
- 红石粉图标
- 红石火把
- 活塞
- 红石块

### 方法 3：简单文字 Logo

创建一个简单的文字图标，包含"MC"或"红石"等字样。

## 📋 添加步骤

1. **准备图片**
   - 格式：PNG（推荐透明背景）
   - 尺寸：200x200px 或更大
   - 文件名：`logo.png`

2. **放置图片**
   ```bash
   # 将图片复制到 public 目录
   cp your-logo.png /home/a/Minecraft/docs/.vuepress/public/logo.png
   ```

3. **启用配置**
   
   编辑 `docs/.vuepress/config.js`，取消注释：
   ```javascript
   logo: '/logo.png',
   ```

   编辑 `docs/README.md`，取消注释：
   ```yaml
   heroImage: /logo.png
   ```

4. **查看效果**
   
   保存后，浏览器会自动刷新显示新的 Logo

## 🚀 临时解决方案

如果现在不想添加 Logo，当前配置已经可以正常工作了。页面会显示：
- ✅ 导航栏正常（没有 Logo）
- ✅ 首页正常（没有大图）
- ✅ 所有功能正常

## 💡 快速测试

如果想快速测试，可以下载一个 Minecraft 红石相关的图标：

```bash
# 下载一个示例图标（需要 wget 或 curl）
cd /home/a/Minecraft/docs/.vuepress/public/
wget https://static.wikia.nocookie.net/minecraft_gamepedia/images/e/ef/Redstone_Dust.png -O logo.png
```

然后取消注释配置文件中的 logo 设置即可。

---

**当前配置已经可以正常使用，图标为可选项。**
