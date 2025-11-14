@echo off
echo ========================================
echo Smile Hair Clinic - Telefona Yukleme
echo ========================================
echo.

echo Bagli cihazlar kontrol ediliyor...
cd /d "%~dp0"
flutter devices

echo.
echo USB ile bagli telefonunuza yukleniyor...
echo NOT: Telefonunuzda USB hata ayiklama modu acik olmali!
echo.

flutter install

echo.
echo ========================================
echo Yukleme tamamlandi!
echo ========================================
pause

