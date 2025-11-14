# Gradle Build Hatası Çözümü

## 🔴 Hata: Connection timed out / UnknownHostException

Bu hata, Gradle'ın internet üzerinden bağımlılıkları indirememesinden kaynaklanıyor.

---

## ✅ Çözüm 1: İnternet Bağlantısını Kontrol Et

1. İnternet bağlantınızı kontrol edin
2. VPN kullanıyorsanız kapatın veya değiştirin
3. Proxy ayarlarınızı kontrol edin

---

## ✅ Çözüm 2: Gradle Offline Mode (Önerilen)

Eğer daha önce bağımlılıklar indirildiyse, offline mode kullanabilirsiniz:

```bash
cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic"
flutter run -d emulator-5554 --offline
```

---

## ✅ Çözüm 3: Android Studio'dan Gradle Sync

1. Android Studio'yu açın
2. **File** > **Open** ile projeyi açın:
   ```
   C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic\android
   ```
3. **File** > **Sync Project with Gradle Files**
4. Bu işlem Gradle wrapper'ı ve bağımlılıkları indirecektir
5. Sync tamamlandıktan sonra Flutter'dan tekrar deneyin

---

## ✅ Çözüm 4: Gradle Wrapper'ı Manuel İndir

1. Android Studio'yu açın
2. Projeyi açın (android klasörü)
3. Gradle sync yapın (yukarıdaki adım)
4. Bu işlem Gradle'ı otomatik indirecektir

---

## ✅ Çözüm 5: Proxy Ayarları (Eğer Proxy Kullanıyorsanız)

Gradle proxy ayarlarını yapılandırın:

1. `android/gradle.properties` dosyasını açın
2. Şu satırları ekleyin (proxy bilgilerinizle değiştirin):

```properties
systemProp.http.proxyHost=proxy.example.com
systemProp.http.proxyPort=8080
systemProp.https.proxyHost=proxy.example.com
systemProp.https.proxyPort=8080
```

---

## ✅ Çözüm 6: Gradle Cache Temizleme

```bash
cd "C:\Users\Eren\Desktop\Smile Hair Clinic\smile_hair_clinic\android"
gradlew clean
```

---

## 🚀 Hızlı Çözüm (En Kolay)

**Android Studio'dan Gradle Sync yapın:**

1. Android Studio'yu açın
2. **File** > **Open**
3. Şu klasörü seçin: `smile_hair_clinic\android`
4. Android Studio projeyi açtıktan sonra otomatik olarak Gradle sync başlayacak
5. Sync tamamlandıktan sonra Flutter'dan tekrar deneyin

---

## 📝 Notlar

- İlk build için internet bağlantısı gereklidir
- Gradle sync işlemi 5-10 dakika sürebilir
- Sync tamamlandıktan sonra offline mode kullanabilirsiniz

