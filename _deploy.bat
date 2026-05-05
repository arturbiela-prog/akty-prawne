@echo off
D:
cd "D:\PGIK_Akty_prawne"
echo.
echo === Pobieranie zmian z GitHub ===
git pull
echo.
echo === Dodawanie plikow ===
git add .
echo.
echo === Podaj opis zmian ===
set /p msg=Opis: 
git commit -m "%msg%"
echo.
echo === Wysylanie na GitHub ===
git push
echo.
echo === Wysylanie na Firebase ===
firebase deploy --only hosting
echo.
echo === GOTOWE ===
pause