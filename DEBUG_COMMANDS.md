# 浏览器调试命令

## 在浏览器控制台（F12 → Console）中运行：

### 1. 查看Hero区域的class名称
```javascript
console.log(document.querySelector('[class*="hero"]')?.className)
```

### 2. 查看Hero区域的完整HTML结构
```javascript
console.log(document.querySelector('[class*="hero"]')?.outerHTML)
```

### 3. 查看所有包含"home"或"hero"的元素
```javascript
document.querySelectorAll('[class*="home"], [class*="hero"]').forEach(el => {
  console.log(el.className, el.tagName)
})
```

### 4. 检查样式是否已加载
```javascript
const hero = document.querySelector('[class*="hero"]')
if (hero) {
  console.log('Height:', window.getComputedStyle(hero).height)
  console.log('Min-Height:', window.getComputedStyle(hero).minHeight)
  console.log('Display:', window.getComputedStyle(hero).display)
}
```

### 5. 查看head中的style标签
```javascript
document.querySelectorAll('head style').forEach((style, i) => {
  console.log(`Style ${i}:`, style.textContent.substring(0, 100))
})
```

## 最简单的方法：

在控制台运行这个一行命令：
```javascript
document.querySelector('[class*="hero"]')
```

然后在结果上：
1. 右键点击
2. 选择 "Reveal in Elements panel"（在元素面板中显示）
3. 就能看到完整的HTML和class名称
