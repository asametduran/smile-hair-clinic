# 🚀 Hızlı Başlangıç Kılavuzu

## Emülatörü Başlatma

### Yöntem 1: Batch Dosyası ile (En Kolay)
1. Proje klasöründe `start_emulator.bat` dosyasına çift tıklayın
2. Emülatör otomatik olarak başlayacak

### Yöntem 2: Terminal'den
```bash
cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
flutter emulators --launch Medium_Phone_API_36.1
```

### Yöntem 3: Android Studio'dan
1. Android Studio'yu açın
2. **More Actions** > **Virtual Device Manager**
3. Emülatörün yanındaki **▶️ Play** butonuna tıklayın

---

## Uygulamayı Çalıştırma

### Yöntem 1: Batch Dosyası ile
1. `run_app.bat` dosyasına çift tıklayın
2. Uygulama emülatörde açılacak

### Yöntem 2: Cursor'dan
1. Cursor'da `main.dart` dosyasını açın
2. **F5** tuşuna basın (veya sağ üstteki ▶️ Run butonuna tıklayın)
3. Cihaz seçimi yapın (emülatörü seçin)

### Yöntem 3: Terminal'den
```bash
cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
flutter run
```

---

## Hot Reload (Sıcak Yenileme)

Uygulama çalışırken:
- **r** tuşuna basın → Hot reload (hızlı yenileme)
- **R** tuşuna basın → Hot restart (tam yeniden başlatma)
- **q** tuşuna basın → Çıkış

---

## Cursor'da Debugging

1. Kod satırının soluna tıklayarak **breakpoint** koyun
2. **F5** ile debug modunda çalıştırın
3. Breakpoint'e geldiğinde durur
4. Değişkenleri inceleyebilirsiniz

---

## Mevcut Emülatörler

- **Medium_Phone** - Genel amaçlı telefon
- **Medium_Phone_API_36.1** - Android 13+ (Önerilen)

---

## Sorun Giderme

### Emülatör görünmüyor
```bash
flutter devices
```

### Emülatör çok yavaş
1. Android Studio'da emülatör ayarlarını kontrol edin
2. RAM ve CPU ayarlarını artırın
3. Hardware acceleration'ın açık olduğundan emin olun

### "No devices found" hatası
1. Emülatörün başlatıldığından emin olun
2. `flutter devices` komutuyla kontrol edin
3. Emülatörü yeniden başlatın

---

## Hızlı Komutlar

```bash
# Emülatörleri listele
flutter emulators

# Emülatör başlat
flutter emulators --launch Medium_Phone_API_36.1

# Bağlı cihazları göster
flutter devices

# Uygulamayı çalıştır
flutter run

# Hot reload (çalışırken)
r

# Çıkış (çalışırken)
q
```

---

**İpucu:** Cursor'da Flutter extension kurulu olduğundan emin olun. Extensions sekmesinden "Flutter" arayıp yükleyebilirsiniz.

