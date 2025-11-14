# Flutter Extension Kurulumu - Cursor IDE

## 🚀 Hızlı Kurulum (Adım Adım)

### Adım 1: Extensions Sekmesini Açın
1. Cursor'u açın
2. **Ctrl+Shift+X** tuşlarına basın (veya sol taraftaki Extensions ikonuna tıklayın)

### Adım 2: Flutter Extension'ını Bulun
1. Arama kutusuna **"Flutter"** yazın
2. **"Flutter"** extension'ını bulun (Dart Code tarafından geliştirilmiş)
3. **Install** (Yükle) butonuna tıklayın

### Adım 3: Dart Extension'ı Otomatik Yüklenecek
- Flutter extension'ı yüklerken **Dart** extension'ı da otomatik olarak yüklenecektir
- Her ikisinin de yüklendiğinden emin olun

### Adım 4: Cursor'u Yeniden Başlatın
1. Extension yüklendikten sonra Cursor'u kapatın
2. Cursor'u tekrar açın (extension'ların aktif olması için)

### Adım 5: Flutter SDK Yolunu Kontrol Edin
1. **File** > **Preferences** > **Settings** (veya **Ctrl+,**)
2. Arama kutusuna **"flutter sdk"** yazın
3. **Flutter: Sdk Path** ayarını kontrol edin
   - Genellikle otomatik bulunur: `C:\src\flutter` veya benzeri
   - Eğer bulunamazsa, Flutter'ın kurulu olduğu yolu manuel olarak girin

---

## ✅ Kurulum Kontrolü

### Extension'ların Yüklü Olduğunu Kontrol Etme
1. **Ctrl+Shift+X** ile Extensions sekmesini açın
2. Arama kutusuna **"@installed flutter"** yazın
3. Şunları görmelisiniz:
   - ✅ **Flutter** (Dart Code)
   - ✅ **Dart** (Dart Code)

### Flutter Komutlarını Test Etme
1. **Ctrl+Shift+P** ile Command Palette'i açın
2. **"Flutter"** yazın
3. Şu komutları görmelisiniz:
   - Flutter: New Project
   - Flutter: Select Device
   - Flutter: Launch Emulator
   - Flutter: Run
   - Flutter: Hot Reload
   - vb.

---

## 🔧 Extension Olmadan Çalıştırma (Alternatif)

Eğer extension kurulumunda sorun yaşıyorsanız, terminal'den çalıştırabilirsiniz:

### Terminal'den Çalıştırma
1. Cursor'da **Terminal** açın (**Ctrl+`**)
2. Proje klasörüne gidin:
   ```bash
   cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
   ```
3. Emülatörü başlatın (eğer başlatılmadıysa):
   ```bash
   flutter emulators --launch Medium_Phone_API_36.1
   ```
4. Uygulamayı çalıştırın:
   ```bash
   flutter run
   ```

---

## 🐛 Yaygın Sorunlar ve Çözümleri

### Sorun 1: "Flutter SDK not found"
**Çözüm:**
1. Flutter SDK yolunu manuel olarak ayarlayın:
   - **Ctrl+,** ile Settings'i açın
   - **"flutter sdk"** arayın
   - **Flutter: Sdk Path** değerini girin:
     ```
     C:\src\flutter
     ```
     (veya Flutter'ın kurulu olduğu yol)

### Sorun 2: Extension yüklenmiyor
**Çözüm:**
1. Cursor'u yönetici olarak çalıştırın
2. İnternet bağlantınızı kontrol edin
3. Cursor'u yeniden başlatın

### Sorun 3: "No Flutter SDK found"
**Çözüm:**
1. Terminal'de Flutter'ın kurulu olduğunu kontrol edin:
   ```bash
   flutter --version
   ```
2. Flutter SDK yolunu bulun:
   ```bash
   where flutter
   ```
3. Bu yolu Cursor ayarlarına ekleyin

### Sorun 4: Extension yüklü ama çalışmıyor
**Çözüm:**
1. Extension'ı kaldırıp tekrar yükleyin
2. Cursor'u tamamen kapatıp yeniden açın
3. Flutter SDK yolunu kontrol edin

---

## 📋 Kurulum Sonrası Kontrol Listesi

- [ ] Flutter extension yüklendi
- [ ] Dart extension yüklendi
- [ ] Cursor yeniden başlatıldı
- [ ] Flutter SDK yolu ayarlandı
- [ ] Command Palette'de Flutter komutları görünüyor
- [ ] `main.dart` dosyasında Run butonu görünüyor
- [ ] F5 tuşu ile çalıştırma çalışıyor

---

## 🎯 Extension Kurulumu Sonrası Kullanım

### Run Butonu ile Çalıştırma
1. `main.dart` dosyasını açın
2. Sağ üstteki **▶️ Run** butonuna tıklayın
3. Cihaz seçimi yapın

### F5 ile Debug
1. `main.dart` dosyasını açın
2. **F5** tuşuna basın
3. Debug modunda çalışacak

### Command Palette ile
1. **Ctrl+Shift+P** ile Command Palette'i açın
2. **"Flutter: Run"** yazın
3. Enter'a basın

---

## 📚 Ek Kaynaklar

- [Flutter Extension Dokümantasyonu](https://dartcode.org/docs/)
- [Flutter IDE Setup](https://docs.flutter.dev/get-started/editor)
- [Cursor IDE Dokümantasyonu](https://cursor.sh/docs)

---

**Not:** Extension kurulumu tamamlandıktan sonra Cursor'u mutlaka yeniden başlatın!

