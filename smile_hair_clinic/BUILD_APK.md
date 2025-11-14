# 📱 APK Oluşturma ve Fiziksel Cihaza Yükleme

## Yöntem 1: Debug APK (Hızlı Test)

### Adım 1: APK Oluştur
```powershell
cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
flutter build apk --debug
```

APK dosyası şu konumda oluşacak:
```
build\app\outputs\flutter-apk\app-debug.apk
```

### Adım 2: Cihaza Yükle

**Seçenek A: USB ile (ADB)**
1. Telefonunuzu USB ile bilgisayara bağlayın
2. USB hata ayıklama modunu açın (Ayarlar > Geliştirici Seçenekleri)
3. Şu komutu çalıştırın:
```powershell
flutter install
```

**Seçenek B: Manuel Yükleme**
1. `build\app\outputs\flutter-apk\app-debug.apk` dosyasını telefonunuza kopyalayın
2. Telefonda dosya yöneticisinden APK'yı açın
3. "Bilinmeyen kaynaklardan yükleme" iznini verin
4. Yüklemeyi tamamlayın

---

## Yöntem 2: Release APK (Production)

### Adım 1: APK Oluştur
```powershell
cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
flutter build apk --release
```

APK dosyası şu konumda oluşacak:
```
build\app\outputs\flutter-apk\app-release.apk
```

### Adım 2: Cihaza Yükle
Yöntem 1'deki adımları takip edin.

---

## Yöntem 3: USB ile Doğrudan Çalıştırma (Hot Reload ile)

### Adım 1: Telefonu Hazırla
1. Telefonunuzu USB ile bilgisayara bağlayın
2. **Ayarlar > Telefon Hakkında > Yapı Numarası**'na 7 kez tıklayarak Geliştirici Seçenekleri'ni açın
3. **Ayarlar > Geliştirici Seçenekleri > USB Hata Ayıklama**'yı açın
4. Bilgisayara bağladığınızda "USB hata ayıklamaya izin ver" uyarısını onaylayın

### Adım 2: Cihazı Kontrol Et
```powershell
cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
flutter devices
```

Telefonunuz listede görünmeli.

### Adım 3: Uygulamayı Çalıştır
```powershell
flutter run
```

Veya belirli cihazı seç:
```powershell
flutter run -d <device-id>
```

**Avantaj:** Hot reload çalışır! Kod değişikliklerini anında görebilirsiniz.

---

## Sorun Giderme

### Cihaz görünmüyor
1. USB kablosunu değiştirin
2. USB hata ayıklama modunun açık olduğundan emin olun
3. Telefonda "USB hata ayıklamaya izin ver" uyarısını onaylayın
4. `flutter doctor` komutuyla sorunları kontrol edin

### "Installation failed" hatası
1. Telefonda eski versiyonu kaldırın
2. "Bilinmeyen kaynaklardan yükleme" iznini verin
3. Yeterli depolama alanı olduğundan emin olun

### APK çok büyük
Debug APK'lar büyük olabilir. Release APK daha küçüktür:
```powershell
flutter build apk --release --split-per-abi
```
Bu komut her mimari için ayrı APK oluşturur (daha küçük).

---

## Hızlı Komutlar

```powershell
# APK oluştur (debug)
flutter build apk --debug

# APK oluştur (release)
flutter build apk --release

# Bağlı cihazları listele
flutter devices

# USB ile çalıştır
flutter run

# APK'yı USB ile yükle
flutter install
```

---

**Not:** Expo Go sadece React Native projeleri için çalışır. Bu proje Flutter ile yazıldığı için Expo Go kullanılamaz. Yukarıdaki yöntemler Flutter için doğru yaklaşımdır.

