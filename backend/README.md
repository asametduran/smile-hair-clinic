# Smile Hair Clinic Backend API

Node.js + Express + MongoDB backend API

## Kurulum

### 1. Bağımlılıkları Yükle
```bash
npm install
```

### 2. MongoDB Kurulumu

#### Seçenek 1: MongoDB Atlas (Cloud - Önerilen)
1. [MongoDB Atlas](https://www.mongodb.com/cloud/atlas) hesabı oluşturun
2. Ücretsiz cluster oluşturun
3. Connection string'i alın
4. `.env` dosyasına ekleyin

#### Seçenek 2: Local MongoDB
1. [MongoDB Community Server](https://www.mongodb.com/try/download/community) indirin
2. Kurun ve başlatın
3. `.env` dosyasında `MONGODB_URI=mongodb://localhost:27017/smile_hair_clinic` kullanın

### 3. Environment Variables

`.env.example` dosyasını `.env` olarak kopyalayın ve düzenleyin:

```env
MONGODB_URI=mongodb+srv://username:password@cluster.mongodb.net/smile_hair_clinic
JWT_SECRET=your-super-secret-key-change-this
PORT=3000
CORS_ORIGIN=*
```

### 4. Server'ı Başlat

```bash
# Development (nodemon ile)
npm run dev

# Production
npm start
```

Server `http://localhost:3000` adresinde çalışacak.

## API Endpoints

### Authentication

#### POST `/api/auth/register`
Kullanıcı kaydı

**Request:**
```json
{
  "name": "Ahmet Yılmaz",
  "email": "ahmet@example.com",
  "phone": "05551234567",
  "password": "123456"
}
```

**Response:**
```json
{
  "success": true,
  "message": "Kayıt başarılı",
  "data": {
    "token": "jwt-token-here",
    "user": {
      "id": "user-id",
      "name": "Ahmet Yılmaz",
      "email": "ahmet@example.com",
      "phone": "05551234567"
    }
  }
}
```

#### POST `/api/auth/login`
Kullanıcı girişi

**Request:**
```json
{
  "email": "ahmet@example.com",
  "password": "123456"
}
```

**Response:**
```json
{
  "success": true,
  "message": "Giriş başarılı",
  "data": {
    "token": "jwt-token-here",
    "user": {
      "id": "user-id",
      "name": "Ahmet Yılmaz",
      "email": "ahmet@example.com",
      "phone": "05551234567"
    }
  }
}
```

#### GET `/api/auth/me`
Kullanıcı bilgilerini getir

**Headers:**
```
Authorization: Bearer jwt-token-here
```

### Photos

#### POST `/api/photos/upload`
Fotoğraf yükle

**Headers:**
```
Authorization: Bearer jwt-token-here
```

**Request:**
```json
{
  "angle": 0,
  "url": "https://example.com/photo.jpg"
}
```

#### GET `/api/photos/my-photos`
Kullanıcının fotoğraflarını getir

**Headers:**
```
Authorization: Bearer jwt-token-here
```

## Test

Health check:
```bash
curl http://localhost:3000/api/health
```

