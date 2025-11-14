# Flutter Extension Sorun Giderme

## 🔴 Extension Kurulum Hataları ve Çözümleri

### Hata 1: "Extension installation failed"
**Olası Nedenler:**
- İnternet bağlantısı sorunu
- Cursor cache sorunu
- İzin sorunu

**Çözümler:**
1. **İnternet bağlantınızı kontrol edin**
2. **Cursor'u yönetici olarak çalıştırın:**
   - Cursor'u kapatın
   - Cursor.exe'ye sağ tıklayın
   - "Run as administrator" seçin
   - Extension'ı tekrar yüklemeyi deneyin

3. **Cursor cache'ini temizleyin:**
   - Cursor'u kapatın
   - `%APPDATA%\Cursor` klasörünü silin (veya yeniden adlandırın)
   - Cursor'u tekrar açın

### Hata 2: "Flutter SDK not found"
**Çözüm:**
1. Terminal'de Flutter yolunu kontrol edin:
   ```bash
   flutter --version
   where flutter
   ```

2. Flutter SDK yolunu manuel olarak ayarlayın:
   - **Ctrl+,** ile Settings'i açın
   - **"flutter sdk"** arayın
   - **Flutter: Sdk Path** değerini girin
   - Örnek: `C:\src\flutter` (Flutter'ın kurulu olduğu yol)

### Hata 3: "VS Code extension not compatible"
**Çözüm:**
- Cursor, VS Code extension'larını destekler ama bazıları uyumlu olmayabilir
- Alternatif: Terminal'den çalıştırın (extension olmadan da çalışır)

### Hata 4: "Permission denied"
**Çözüm:**
1. Cursor'u yönetici olarak çalıştırın
2. Antivirus yazılımınızı geçici olarak devre dışı bırakın
3. Windows Defender'ı kontrol edin

---

## ✅ Extension Olmadan Çalıştırma (Alternatif)

Extension kurulumunda sorun yaşıyorsanız, terminal'den çalıştırabilirsiniz. Flutter extension olmadan da tam fonksiyonel çalışır!

### Terminal'den Çalıştırma

#### Yöntem 1: Batch Dosyası (En Kolay)
```bash
# Proje klasöründe
run_without_extension.bat
```

#### Yöntem 2: Manuel Terminal Komutları
```bash
# Proje klasörüne gidin
cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"

# Emülatörü başlatın (eğer başlatılmadıysa)
flutter emulators --launch Medium_Phone_API_36.1

# Uygulamayı çalıştırın
flutter run
```

#### Yöntem 3: Cursor Terminal'inden
1. Cursor'da **Ctrl+`** ile terminal açın
2. Şu komutları çalıştırın:
   ```bash
   cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
   flutter run
   ```

---

## 🔧 Extension Olmadan Debugging

### Hot Reload
Uygulama çalışırken terminal'de:
- **r** + Enter → Hot reload
- **R** + Enter → Hot restart
- **q** + Enter → Çıkış

### Breakpoint Kullanımı
Extension olmadan da debugging yapabilirsiniz:
1. Kodunuza `print()` veya `debugPrint()` ekleyin
2. Terminal'de çıktıları görebilirsiniz

Örnek:
```dart
void main() {
  debugPrint('Uygulama başlatılıyor...');
  runApp(const MyApp());
}
```

---

## 🎯 Önerilen Çözüm: Extension Olmadan Devam Etme

Extension kurulumunda sorun yaşıyorsanız, **extension olmadan da geliştirmeye devam edebilirsiniz!**

### Avantajlar:
- ✅ Terminal'den tam kontrol
- ✅ Hot reload çalışır
- ✅ Tüm Flutter komutları kullanılabilir
- ✅ Debugging yapılabilir (print ile)

### Dezavantajlar:
- ❌ Cursor'da Run butonu görünmez
- ❌ F5 ile çalıştıramazsınız
- ❌ Otomatik IntelliSense biraz daha sınırlı olabilir

---

## 📋 Hızlı Kontrol Listesi

Extension kurulumu için:
- [ ] İnternet bağlantısı var mı?
- [ ] Cursor yönetici olarak çalıştırıldı mı?
- [ ] Flutter SDK yolu doğru mu?
- [ ] Cursor cache temizlendi mi?

Extension olmadan çalıştırma için:
- [ ] Emülatör başlatıldı mı?
- [ ] `flutter devices` emülatörü görüyor mu?
- [ ] `flutter run` komutu çalışıyor mu?

---

## 🚀 Hemen Başlayın (Extension Olmadan)

1. **Terminal'i açın** (Cursor'da Ctrl+`)
2. **Proje klasörüne gidin:**
   ```bash
   cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
   ```
3. **Uygulamayı çalıştırın:**
   ```bash
   flutter run
   ```
4. **Hot reload için:** Terminal'de **r** + Enter

---

## 💡 İpucu

Extension kurulumunda sürekli sorun yaşıyorsanız:
1. Cursor'u tamamen kaldırıp yeniden yükleyin
2. Veya VS Code kullanın (Flutter extension'ı VS Code'da daha stabil)
3. Veya terminal'den devam edin (tam fonksiyonel)

**Önemli:** Extension olmadan da Flutter geliştirmesi yapabilirsiniz! Terminal'den çalıştırmak da tamamen geçerli bir yöntemdir.

