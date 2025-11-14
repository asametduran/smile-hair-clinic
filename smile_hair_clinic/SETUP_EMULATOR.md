# Emülatör Kurulumu ve Cursor Entegrasyonu

## 📱 Flutter Mobil Geliştirme Ortamı Kurulumu

### 1. Android Studio Kurulumu

#### Adım 1: Android Studio İndirme
1. [Android Studio](https://developer.android.com/studio) sitesinden indirin
2. İndirilen dosyayı çalıştırın ve kurulum sihirbazını takip edin

#### Adım 2: Android SDK Kurulumu
1. Android Studio'yu açın
2. **More Actions** > **SDK Manager**'a gidin
3. **SDK Platforms** sekmesinde:
   - ✅ Android 13.0 (API 33) veya daha yeni
   - ✅ Android 12.0 (API 31) - Minimum gereksinim
4. **SDK Tools** sekmesinde:
   - ✅ Android SDK Build-Tools
   - ✅ Android Emulator
   - ✅ Android SDK Platform-Tools
   - ✅ Intel x86 Emulator Accelerator (HAXM installer) - Performans için
5. **Apply** ve **OK** butonlarına tıklayın

#### Adım 3: Android Emulator Oluşturma
1. Android Studio'da **More Actions** > **Virtual Device Manager**'a gidin
2. **Create Device** butonuna tıklayın
3. Bir cihaz seçin (örn: **Pixel 5** veya **Pixel 6**)
4. **Next** butonuna tıklayın
5. Sistem görüntüsü seçin:
   - **Release Name:** Android 13 (Tiramisu) veya daha yeni
   - **API Level:** 33 veya daha yeni
   - **Download** butonuna tıklayarak indirin (gerekirse)
6. **Next** > **Finish** ile emülatörü oluşturun

#### Adım 4: Emülatörü Test Etme
1. Virtual Device Manager'da oluşturduğunuz emülatörün yanındaki **▶️ Play** butonuna tıklayın
2. Emülatör açılmalı ve Android ekranını göstermeli

---

### 2. Flutter Kurulumu Kontrolü

#### Flutter Doctor Kontrolü
Terminal'de şu komutu çalıştırın:

```bash
flutter doctor
```

Çıktı şöyle olmalı:
```
[✓] Flutter (Channel stable, 3.x.x)
[✓] Android toolchain - develop for Android devices
[✓] Android Studio
[✓] VS Code
[✓] Connected device
[✓] Network resources
```

Eksik bir şey varsa, `flutter doctor` size ne yapmanız gerektiğini söyleyecektir.

---

### 3. Cursor IDE Kurulumu

#### Adım 1: Flutter Extension Kurulumu
1. Cursor'u açın
2. **Extensions** (Ctrl+Shift+X) sekmesine gidin
3. **Flutter** arayın
4. **Flutter** extension'ını (Dart Code tarafından) yükleyin
5. **Dart** extension'ı otomatik olarak yüklenecektir

#### Adım 2: Cursor Ayarları
1. **File** > **Preferences** > **Settings** (veya Ctrl+,)
2. Arama kutusuna "flutter" yazın
3. **Flutter: Sdk Path** ayarını kontrol edin (genellikle otomatik bulunur)
4. **Dart: Flutter Sdk Path** ayarını kontrol edin

---

### 4. Emülatörü Cursor'dan Başlatma

#### Yöntem 1: Terminal'den Başlatma (Önerilen)

1. **Cursor**'da **Terminal** açın (Ctrl+`)
2. Proje klasörüne gidin:
   ```bash
   cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
   ```
3. Mevcut emülatörleri listeleyin:
   ```bash
   flutter emulators
   ```
4. Emülatörü başlatın:
   ```bash
   flutter emulators --launch <emulator_id>
   ```
   Örnek:
   ```bash
   flutter emulators --launch Pixel_5_API_33
   ```

#### Yöntem 2: Android Studio'dan Başlatma
1. Android Studio'yu açın
2. Virtual Device Manager'dan emülatörü başlatın
3. Cursor'da Flutter uygulamasını çalıştırın

#### Yöntem 3: Cursor Command Palette
1. **Ctrl+Shift+P** ile Command Palette'i açın
2. **Flutter: Launch Emulator** yazın
3. Emülatör listesinden birini seçin

---

### 5. Uygulamayı Çalıştırma

#### Terminal'den Çalıştırma
```bash
# Proje klasörüne gidin
cd smile_hair_clinic

# Bağlı cihazları kontrol edin
flutter devices

# Uygulamayı çalıştırın
flutter run
```

#### Cursor'dan Çalıştırma
1. **main.dart** dosyasını açın
2. Sağ üstteki **▶️ Run** butonuna tıklayın
   - Veya **F5** tuşuna basın
   - Veya **Ctrl+F5** ile debug modunda çalıştırın

#### Hot Reload
- Uygulama çalışırken kod değişikliklerini görmek için:
  - **r** tuşuna basın (hot reload)
  - **R** tuşuna basın (hot restart)
  - Veya terminal'de **r** yazıp Enter'a basın

---

### 6. Debugging

#### Breakpoint Koyma
1. Kod satırının solundaki boşluğa tıklayın (kırmızı nokta görünecek)
2. **F5** ile debug modunda çalıştırın
3. Breakpoint'e geldiğinde durur ve değişkenleri inceleyebilirsiniz

#### Debug Console
- **View** > **Output** > **Debug Console** ile debug çıktılarını görebilirsiniz

---

### 7. Yaygın Sorunlar ve Çözümleri

#### Sorun 1: "No devices found"
**Çözüm:**
```bash
# Emülatörü başlatın
flutter emulators --launch <emulator_id>

# Veya Android Studio'dan başlatın
```

#### Sorun 2: "Android SDK not found"
**Çözüm:**
1. Android Studio'yu açın
2. SDK Manager'dan SDK'yı indirin
3. Ortam değişkenlerini kontrol edin:
   - `ANDROID_HOME` = `C:\Users\<Kullanıcı>\AppData\Local\Android\Sdk`
   - `PATH` içine ekleyin: `%ANDROID_HOME%\platform-tools`

#### Sorun 3: Emülatör çok yavaş
**Çözüm:**
1. HAXM (Hardware Acceleration) kurulu olduğundan emin olun
2. BIOS'ta Virtualization Technology'yi etkinleştirin
3. Daha az RAM kullanan bir emülatör oluşturun

#### Sorun 4: "ADB not found"
**Çözüm:**
```bash
# Platform tools'u PATH'e ekleyin
# Windows'ta:
set PATH=%PATH%;%LOCALAPPDATA%\Android\Sdk\platform-tools
```

---

### 8. Hızlı Komutlar

```bash
# Emülatörleri listele
flutter emulators

# Emülatör başlat
flutter emulators --launch <id>

# Bağlı cihazları göster
flutter devices

# Uygulamayı çalıştır
flutter run

# Release modunda build
flutter build apk

# Hot reload (çalışırken)
r

# Hot restart (çalışırken)
R

# Çıkış (çalışırken)
q
```

---

### 9. Önerilen Emülatör Ayarları

**Pixel 5 veya Pixel 6:**
- **RAM:** 4 GB (minimum), 6 GB (önerilen)
- **VM Heap:** 512 MB
- **Internal Storage:** 8 GB
- **SD Card:** 512 MB

**Performans için:**
- Graphics: **Hardware - GLES 2.0**
- Multi-core CPU: **4 cores** (mümkünse)

---

### 10. iOS Simulator (Mac Kullanıcıları İçin)

Windows'ta iOS Simulator kullanamazsınız. Mac gereklidir.

Mac'te:
1. Xcode'u App Store'dan indirin
2. Xcode'u açın ve lisansı kabul edin
3. Terminal'de:
   ```bash
   sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
   sudo xcodebuild -runFirstLaunch
   ```
4. Simulator'ü başlatın:
   ```bash
   open -a Simulator
   ```

---

## ✅ Kurulum Kontrol Listesi

- [ ] Android Studio kuruldu
- [ ] Android SDK kuruldu (API 33+)
- [ ] Android Emulator oluşturuldu
- [ ] Emülatör başarıyla başlatıldı
- [ ] Flutter extension Cursor'a yüklendi
- [ ] `flutter doctor` tüm kontrolleri geçti
- [ ] `flutter devices` emülatörü görüyor
- [ ] Test uygulaması çalıştırıldı

---

## 📚 Ek Kaynaklar

- [Flutter Dokümantasyonu](https://docs.flutter.dev/)
- [Android Studio Kılavuzu](https://developer.android.com/studio)
- [Flutter Extension Dokümantasyonu](https://dartcode.org/docs/)

---

**Not:** Bu kılavuz Windows için hazırlanmıştır. Mac kullanıcıları iOS Simulator için ek adımlar izlemelidir.

