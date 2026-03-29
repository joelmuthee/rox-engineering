@echo off
cd /d "C:\Users\Joel\Website Designs\rox-engineering"
git add -A
git commit -m "Initial commit - Rox Engineering website"
git branch -M main
git remote add origin https://github.com/joelmuthee/rox-engineering.git 2>nul
git push -u origin main
echo DONE
pause
