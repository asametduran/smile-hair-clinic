# Gradle Sync Talimatları

## 🔧 Android Studio ile Gradle Sync

### Adım 1: Android Studio'yu Açın
1. Android Studio'yu başlatın

### Adım 2: Projeyi Açın
1. **File** > **Open** menüsüne tıklayın
2. Şu klasörü seçin:
   ```
   C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic\android
   ```
3. **OK** butonuna tıklayın

### Adım 3: Gradle Sync
1. Android Studio projeyi açtığında otomatik olarak Gradle sync başlayacak
2. Eğer başlamazsa: **File** > **Sync Project with Gradle Files**
3. Alt kısımdaki **Build** sekmesinde sync ilerlemesini görebilirsiniz
4. Sync tamamlanana kadar bekleyin (5-10 dakika sürebilir)

### Adım 4: Sync Tamamlandıktan Sonra
1. Android Studio'yu kapatabilirsiniz
2. Flutter'dan tekrar deneyin:
   ```bash
   cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
   flutter run -d emulator-5554
   ```

---

## ⚠️ Önemli Notlar

- İlk sync için **internet bağlantısı gereklidir**
- Sync işlemi sırasında Gradle wrapper ve bağımlılıklar indirilecektir
- Eğer internet bağlantınız yoksa, başka bir ağa bağlanmanız gerekebilir
- Sync tamamlandıktan sonra offline mode kullanabilirsiniz

---

## 🔄 Alternatif: İnternet Bağlantısını Düzeltme

1. Wi-Fi veya ethernet bağlantınızı kontrol edin
2. VPN kullanıyorsanız kapatın
3. DNS ayarlarınızı kontrol edin
4. Firewall ayarlarınızı kontrol edin

---

## ✅ Sync Başarılı Olduğunda

Gradle sync başarılı olduğunda, Flutter uygulaması sorunsuz çalışacaktır.

