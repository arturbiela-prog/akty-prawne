@echo off
cd "D:\PGIK_Akty_prawne"
git add .
set /p msg=Opis zmian: 
git commit -m "%msg%"
git push
firebase deploy --only hosting
pause