# Inline Website Clone

这是一个基于 [inline.app](https://inline.app/zh/) 的网站克隆项目。

## 项目文件

- `inline_web.html` - 主 HTML 文件
- `style.css` - 样式文件
- `app.js` - JavaScript 文件
- `.gitignore` - Git 忽略文件配置

## 上传到 GitHub 的步骤

### 第一步：初始化 Git 仓库

在项目文件夹中打开终端（PowerShell 或 Git Bash），执行：

```bash
git init
git add .
git commit -m "Initial commit: inline website clone"
git branch -M main
```

### 第二步：在 GitHub 创建仓库

1. 访问 [GitHub](https://github.com)
2. 点击右上角 "+" → "New repository"
3. 输入仓库名称（例如：`inline-website-clone`）
4. 选择 Public 或 Private
5. **不要**勾选 "Initialize with README"
6. 点击 "Create repository"

### 第三步：连接并推送

执行以下命令（替换为你的 GitHub 用户名和仓库名）：

```bash
git remote add origin https://github.com/你的用户名/仓库名称.git
git push -u origin main
```

### 身份验证

如果提示需要身份验证：
1. GitHub 需要使用 Personal Access Token
2. 访问：Settings → Developer settings → Personal access tokens → Tokens (classic)
3. 生成新 token，勾选 `repo` 权限
4. 使用 token 作为密码

## 后续更新代码

每次修改后：

```bash
git add .
git commit -m "描述你的更改"
git push
```


