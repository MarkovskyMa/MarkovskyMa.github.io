# 直接在当前目录运行这个powershell脚本调试。
# 安装Python、Git等软件
# winget install Python.Python.3.10（或者其他版本，winget search python搜索）
# winget install Git.Git

# 创建venv虚拟环境
# python -m venv venv

# 提前用管理员运行“终端”或者“PowerShell”，运行下面的命令设置执行策略，保证虚拟环境能够启动。
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
.\venv\Scripts\Activate.ps1

# 虚拟环境中安装pelican，注意检查pip（pip -V）
# pip install pelican

pelican.exe --autoreload --listen