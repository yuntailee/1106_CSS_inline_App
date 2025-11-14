# Git 初始化脚本 - 在项目目录中执行

# 检查是否在项目目录中
if (-not (Test-Path "inline_web.html")) {
    Write-Host "错误: 请在项目目录中运行此脚本" -ForegroundColor Red
    Write-Host "项目目录应包含: inline_web.html, style.css, app.js" -ForegroundColor Yellow
    exit 1
}

Write-Host "=== 开始 Git 设置 ===" -ForegroundColor Green

# 1. 初始化 Git 仓库
if (-not (Test-Path ".git")) {
    Write-Host "`n[1/4] 初始化 Git 仓库..." -ForegroundColor Cyan
    git init
    Write-Host "✓ Git 仓库初始化完成" -ForegroundColor Green
} else {
    Write-Host "`n[1/4] Git 仓库已存在" -ForegroundColor Yellow
}

# 2. 添加文件
Write-Host "`n[2/4] 添加文件到暂存区..." -ForegroundColor Cyan
git add inline_web.html style.css app.js .gitignore
if (Test-Path "GITHUB_UPLOAD_GUIDE.md") {
    git add GITHUB_UPLOAD_GUIDE.md
}
Write-Host "✓ 文件已添加到暂存区" -ForegroundColor Green

# 3. 显示状态
Write-Host "`n[3/4] 当前 Git 状态:" -ForegroundColor Cyan
git status --short

# 4. 创建提交
Write-Host "`n[4/4] 创建提交..." -ForegroundColor Cyan
$commitMsg = "Initial commit: inline website clone"
git commit -m $commitMsg
Write-Host "✓ 提交完成: $commitMsg" -ForegroundColor Green

Write-Host "`n=== Git 设置完成 ===" -ForegroundColor Green
Write-Host "`n接下来需要在 GitHub 上创建仓库并连接:" -ForegroundColor Yellow
Write-Host "1. 访问 https://github.com 创建新仓库" -ForegroundColor Cyan
Write-Host "2. 执行以下命令（替换为你的仓库地址）:" -ForegroundColor Cyan
Write-Host "   git remote add origin https://github.com/你的用户名/仓库名称.git" -ForegroundColor White
Write-Host "   git branch -M main" -ForegroundColor White
Write-Host "   git push -u origin main" -ForegroundColor White


