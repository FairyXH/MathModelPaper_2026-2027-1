@echo off
cd /d "%~dp0"
echo 合并当前进度
git pull

git add .

git commit -m "Auto Push"

echo 正在提交当前进度

git push

echo.
echo 完成！
pause