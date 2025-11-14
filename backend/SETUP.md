# Backend API Kurulum Kılavuzu

## 🚀 Hızlı Başlangıç

### 1. Node.js Kurulumu
Node.js'in kurulu olduğundan emin olun:
```bash
node --version
npm --version
```

Eğer kurulu değilse: [Node.js İndir](https://nodejs.org/)

### 2. MongoDB Kurulumu

#### Seçenek A: MongoDB Atlas (Önerilen - Ücretsiz)
1. [MongoDB Atlas](https://www.mongodb.com/cloud/atlas) hesabı oluşturun
2. Ücretsiz M0 cluster oluşturun
3. Database Access'te kullanıcı oluşturun
4. Network Access'te IP adresinizi ekleyin (0.0.0.0/0 - tüm IP'ler için)
5. Connect butonuna tıklayın → "Connect your application"
6. Connection string'i kopyalayın

#### Seçenek B: Local MongoDB
1. [MongoDB Community Server](https://www.mongodb.com/try/download/community) indirin
2. Kurun ve başlatın
3. Connection string: `mongodb://localhost:27017/smile_hair_clinic`

### 3. Backend Kurulumu

```bash
# Backend klasörüne gidin
cd backend

# Bağımlılıkları yükleyin
npm install

# .env dosyası oluşturun
# Windows'ta:
copy .env.example .env

# .env dosyasını düzenleyin:
# MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/smile_hair_clinic
# JWT_SECRET=your-super-secret-key-12345
# PORT=3000
# CORS_ORIGIN=*
```

### 4. Server'ı Başlat

```bash
# Development mode (otomatik yeniden başlatma)
npm run dev

# Production mode
npm start
```

Server `http://localhost:3000` adresinde çalışacak.

### 5. Test

Tarayıcıda açın: `http://localhost:3000/api/health`

Şu mesajı görmelisiniz:
```json
{
  "status": "OK",
  "message": "Smile Hair Clinic API çalışıyor",
  "timestamp": "..."
}
```

## 📱 Flutter Entegrasyonu

### Android Emulator için
Flutter'daki `api_service.dart` dosyasında:
```dart
static const String baseUrl = 'http://10.0.2.2:3000/api';
```

### iOS Simulator için
```dart
static const String baseUrl = 'http://localhost:3000/api';
```

### Gerçek Cihaz için
1. Bilgisayarınızın IP adresini bulun:
   ```bash
   ipconfig  # Windows
   ifconfig  # Mac/Linux
   ```

2. `api_service.dart` dosyasında:
   ```dart
   static const String baseUrl = 'http://192.168.1.XXX:3000/api';
   ```

3. Backend server'ın çalıştığından emin olun
4. Cihaz ve bilgisayar aynı Wi-Fi ağında olmalı

## 🔧 Sorun Giderme

### "Cannot connect to server"
- Backend server'ın çalıştığından emin olun
- Port 3000'in açık olduğundan emin olun
- Firewall ayarlarını kontrol edin

### "MongoDB connection failed"
- MongoDB'nin çalıştığından emin olun
- Connection string'i kontrol edin
- MongoDB Atlas kullanıyorsanız IP whitelist'i kontrol edin

### "JWT token invalid"
- JWT_SECRET'in doğru olduğundan emin olun
- Token'ın süresi dolmuş olabilir (7 gün)

## 📚 API Dokümantasyonu

Detaylı API dokümantasyonu için `README.md` dosyasına bakın.

