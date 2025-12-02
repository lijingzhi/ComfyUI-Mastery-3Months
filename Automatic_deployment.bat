@echo off
echo 正在部署到GitHub Pages...
git add .
git commit -m "自动更新: %date% %time%"
git push origin main
echo 部署完成！访问：https://lijingzhi.github.io/ComfyUI-Mastery-3Months/
pause