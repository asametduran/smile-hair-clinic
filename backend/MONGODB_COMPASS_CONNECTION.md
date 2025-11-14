# MongoDB Compass Bağlantı Kılavuzu

## 🔗 MongoDB Compass Bağlantı URL'i

### Local MongoDB için:
```
mongodb://localhost:27017
```

veya

```
mongodb://127.0.0.1:27017
```

### Veritabanı Adı:
```
smile_hair_clinic
```

---

## 📋 Adım Adım Bağlantı

### 1. MongoDB Compass'ı Açın

### 2. Connection String'i Girin

**Yeni Connection ekleyin:**
- **Connection Name:** Smile Hair Clinic (Local)
- **Connection String:** `mongodb://localhost:27017`
- **Connect** butonuna tıklayın

### 3. Veritabanını Seçin

Bağlandıktan sonra:
- Sol tarafta `smile_hair_clinic` veritabanını göreceksiniz
- Tıklayarak açın

### 4. Collections (Koleksiyonlar)

Veritabanı içinde:
- **users** koleksiyonu - Kullanıcı kayıtları
- Tıklayarak içeriğini görebilirsiniz

---

## 🔍 Verileri Görüntüleme

### Kullanıcıları Görmek İçin:

1. MongoDB Compass'ta `smile_hair_clinic` veritabanına gidin
2. `users` koleksiyonuna tıklayın
3. Kayıtlı kullanıcıları göreceksiniz

### Örnek Kullanıcı Verisi:

```json
{
  "_id": "...",
  "name": "Ahmet Yılmaz",
  "email": "ahmet@example.com",
  "phone": "05551234567",
  "photos": [],
  "createdAt": "2024-11-14T...",
  "updatedAt": "2024-11-14T..."
}
```

---

## ⚠️ Sorun Giderme

### MongoDB Compass bağlanamıyor

1. **MongoDB'nin çalıştığından emin olun:**
   ```bash
   # Windows Services'te MongoDB servisini kontrol edin
   # veya
   mongod --version
   ```

2. **Port kontrolü:**
   - MongoDB varsayılan port: `27017`
   - Port açık mı kontrol edin

3. **Connection string'i kontrol edin:**
   - `mongodb://localhost:27017` (doğru)
   - `mongodb://127.0.0.1:27017` (alternatif)

### Veritabanı görünmüyor

1. **Backend server'ın çalıştığından emin olun**
2. **İlk kayıt işlemini yapın** (veritabanı otomatik oluşur)
3. **MongoDB Compass'ı yenileyin** (F5)

### Veriler görünmüyor

1. **Backend server çalışıyor mu?**
   ```bash
   curl http://localhost:3000/api/health
   ```

2. **Flutter uygulamasından kayıt yaptınız mı?**
   - Kayıt ol ekranından yeni kullanıcı oluşturun
   - Veriler otomatik kaydedilecek

3. **MongoDB loglarını kontrol edin:**
   - Backend terminal'inde hata var mı?

---

## 🧪 Test İçin

### 1. Backend Health Check:
```bash
curl http://localhost:3000/api/health
```

### 2. MongoDB Shell ile Test:
```bash
mongosh
use smile_hair_clinic
show collections
db.users.find().pretty()
```

### 3. Flutter'dan Test:
- Uygulamada "Kayıt Ol" ekranından yeni kullanıcı oluşturun
- MongoDB Compass'ta `users` koleksiyonunu kontrol edin

---

## 📝 Notlar

- Veritabanı ilk kayıt işleminde otomatik oluşturulur
- Şifreler hash'lenmiş olarak saklanır (güvenlik için)
- Token'lar JWT formatında oluşturulur
- Fotoğraflar `photos` array'inde saklanır

---

**Bağlantı URL'i:** `mongodb://localhost:27017`

