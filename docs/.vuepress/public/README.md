# 静态资源目录

这个目录用于存放静态资源文件，如图片、图标等。

## 📁 目录说明

将文件放在这个目录中，它们会被复制到生成的网站根目录。

## 🖼️ 添加 Logo

如果你想添加网站 Logo：

1. 将 logo 图片（推荐 PNG 格式）放到这个目录
2. 命名为 `logo.png` 或其他名称
3. 在 `docs/.vuepress/config.js` 中取消注释并配置：
   ```javascript
   logo: '/logo.png',
   ```
4. 在 `docs/README.md` 首页配置中取消注释：
   ```yaml
   heroImage: /logo.png
   ```

## 📝 推荐的文件

- `logo.png` - 网站 Logo（推荐尺寸：200x200px 或更大）
- `favicon.ico` - 网站图标
- `images/` - 其他图片资源

## 🎨 Logo 建议

- 使用透明背景的 PNG
- 建议尺寸：200x200px 到 512x512px
- 文件大小控制在 100KB 以内
- 可以使用 Minecraft 相关的红石、活塞等元素设计

## 🔍 访问方式

放在此目录的文件可以通过根路径访问：
- `/logo.png` → `docs/.vuepress/public/logo.png`
- `/images/test.jpg` → `docs/.vuepress/public/images/test.jpg`
