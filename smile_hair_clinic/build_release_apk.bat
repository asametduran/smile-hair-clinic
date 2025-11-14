@echo off
echo ========================================
echo Smile Hair Clinic - Release APK Olusturma
echo ========================================
echo.

echo Release APK olusturuluyor...
echo Bu islem biraz zaman alabilir...
echo.

cd /d "%~dp0"
flutter build apk --release

echo.
echo ========================================
echo Release APK basariyla olusturuldu!
echo ========================================
echo.
echo APK konumu:
echo build\app\outputs\flutter-apk\app-release.apk
echo.
echo Bu dosyayi Google Drive, GitHub veya diger servislere yukleyebilirsiniz.
echo.
echo Dosya boyutu:
dir "build\app\outputs\flutter-apk\app-release.apk" | findstr "app-release.apk"
echo.
pause

