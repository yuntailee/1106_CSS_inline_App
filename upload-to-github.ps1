# GitHub 上传脚本
# 在项目文件夹中右键，选择"使用 PowerShell 运行"

Write-Host "=== 开始初始化 Git 仓库 ===" -ForegroundColor Green

# 检查是否已经在 Git 仓库中
if (Test-Path .git) {
    Write-Host "Git 仓库已存在" -ForegroundColor Yellow
    $continue = Read-Host "是否要重新初始化? (y/n)"
    if ($continue -eq "y") {
        Remove-Item -Recurse -Force .git
        Write-Host "已删除旧的 Git 仓库" -ForegroundColor Yellow
    } else {
        Write-Host "使用现有仓库" -ForegroundColor Yellow
    }
}

# 初始化 Git 仓库
if (-not (Test-Path .git)) {
    git init
    Write-Host "Git 仓库初始化完成" -ForegroundColor Green
}

# 添加文件
Write-Host "`n=== 添加文件到暂存区 ===" -ForegroundColor Green
git add .

# 显示状态
Write-Host "`n=== 当前状态 ===" -ForegroundColor Green
git status

# 提交
Write-Host "`n=== 创建提交 ===" -ForegroundColor Green
$commitMsg = Read-Host "请输入提交信息 (默认: Initial commit)"
if ([string]::IsNullOrWhiteSpace($commitMsg)) {
    $commitMsg = "Initial commit: inline website clone"
}
git commit -m $commitMsg

Write-Host "`n=== 提交完成 ===" -ForegroundColor Green
Write-Host "`n接下来需要："
Write-Host "1. 在 GitHub 上创建新仓库" -ForegroundColor Cyan
Write-Host "2. 执行以下命令连接远程仓库：" -ForegroundColor Cyan
Write-Host "   git remote add origin https://github.com/你的用户名/仓库名称.git" -ForegroundColor Yellow
Write-Host "3. 推送到 GitHub：" -ForegroundColor Cyan
Write-Host "   git branch -M main" -ForegroundColor Yellow
Write-Host "   git push -u origin main" -ForegroundColor Yellow


