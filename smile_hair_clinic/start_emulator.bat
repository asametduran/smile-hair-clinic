@echo off
echo ========================================
echo Smile Hair Clinic - Emulator Baslatma
echo ========================================
echo.

echo Mevcut emulatorler listeleniyor...
flutter emulators

echo.
echo Emulator baslatiliyor: Medium_Phone_API_36.1
flutter emulators --launch Medium_Phone_API_36.1

echo.
echo Emulator baslatildi! Biraz bekleyin...
timeout /t 10

echo.
echo Bagli cihazlar kontrol ediliyor...
flutter devices

echo.
echo ========================================
echo Emulator hazir! Cursor'da F5 ile calistirabilirsiniz.
echo ========================================
pause

