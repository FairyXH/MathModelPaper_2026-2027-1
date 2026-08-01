@echo off
cd /d "%~dp0"
echo ======================
echo 正在提交当前进度
echo ======================

git add .

git commit -m "自动提交 %date% %time%"

git push

echo.
echo 完成！
pause