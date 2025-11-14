@echo off
echo ========================================
echo Smile Hair Clinic - APK Olusturma
echo ========================================
echo.

echo APK olusturuluyor (Debug modu)...
cd /d "%~dp0"
flutter build apk --debug

echo.
echo ========================================
echo APK basariyla olusturuldu!
echo ========================================
echo.
echo APK konumu:
echo build\app\outputs\flutter-apk\app-debug.apk
echo.
echo Bu dosyayi telefonunuza kopyalayip yukleyebilirsiniz.
echo.
pause

