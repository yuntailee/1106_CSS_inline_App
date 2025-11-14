# 如何将项目上传到 GitHub

## 步骤 1: 在项目文件夹内初始化 Git 仓库

在项目文件夹 `1106_CSS_inline_App` 中打开终端（PowerShell 或 Git Bash），然后执行：

```bash
git init
```

## 步骤 2: 添加所有文件到暂存区

```bash
git add .
```

或者只添加项目文件：

```bash
git add inline_web.html style.css app.js .gitignore
```

## 步骤 3: 创建第一个提交

```bash
git commit -m "Initial commit: inline website clone"
```

## 步骤 4: 在 GitHub 上创建新仓库

1. 访问 [GitHub](https://github.com)
2. 点击右上角的 "+" 号，选择 "New repository"
3. 输入仓库名称，例如：`inline-website-clone`
4. 选择 Public 或 Private
5. **不要**勾选 "Initialize this repository with a README"
6. 点击 "Create repository"

## 步骤 5: 连接本地仓库到 GitHub

复制 GitHub 给出的命令，通常是：

```bash
git remote add origin https://github.com/你的用户名/仓库名称.git
```

例如：
```bash
git remote add origin https://github.com/oceankiro/inline-website-clone.git
```

## 步骤 6: 推送到 GitHub

```bash
git branch -M main
git push -u origin main
```

## 如果遇到错误

### 如果提示需要身份验证：
GitHub 现在需要使用 Personal Access Token 而不是密码。

1. 访问 GitHub Settings > Developer settings > Personal access tokens > Tokens (classic)
2. 生成新 token，勾选 `repo` 权限
3. 使用 token 作为密码

### 如果需要强制推送（谨慎使用）：
```bash
git push -u origin main --force
```

---

## 后续更新代码

每次修改代码后，执行：

```bash
git add .
git commit -m "描述你的更改"
git push
```

