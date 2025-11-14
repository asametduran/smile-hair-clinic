# 🚀 Sıradaki Yapılacaklar

## ✅ Tamamlananlar
- [x] Proje kurulumu
- [x] Renk paleti ve tema
- [x] Tipografi
- [x] CTA buton bileşeni
- [x] Onboarding ekranları (2 ekran)
- [x] Uygulama çalışıyor! 🎉

---

## 📋 Sıradaki Görevler (Öncelik Sırasına Göre)

### 1. Temel UI Bileşenleri (Öncelik: Yüksek)

#### Header Bileşeni
- [ ] `lib/widgets/app_header.dart` oluştur
- [ ] Geri ok butonu
- [ ] Başlık metni
- [ ] Sağ tarafta opsiyonel ikon (bilgi, menü vb.)
- [ ] Koyu mavi arka plan (#0A2342)
- [ ] Beyaz metin

#### Kart Bileşeni
- [ ] `lib/widgets/app_card.dart` oluştur
- [ ] Beyaz arka plan
- [ ] Yuvarlatılmış köşeler (12px)
- [ ] Gölge efekti
- [ ] Padding ayarları

---

### 2. Ana Navigasyon (Öncelik: Yüksek)

#### Alt Navigasyon Menüsü
- [ ] `lib/widgets/bottom_nav_bar.dart` oluştur
- [ ] 5 sekme:
  1. Ana Sayfa (ev ikonu)
  2. Randevu (takvim ikonu)
  3. Sağlık (kalp ikonu)
  4. Bildirimler (daire ikonu)
  5. Profil (kişi ikonu)
- [ ] Aktif sekme vurgusu (turuncu)
- [ ] Pasif sekme (gri)

#### Routing Sistemi
- [ ] `lib/routes/app_router.dart` oluştur
- [ ] Sayfa yönlendirmeleri
- [ ] Navigator entegrasyonu

---

### 3. Giriş Sistemi (Öncelik: Orta)

#### Giriş Ekranı
- [ ] `lib/screens/auth/login_screen.dart` oluştur
- [ ] Email/Telefon input
- [ ] Şifre input
- [ ] "Giriş Yap" butonu (turuncu)
- [ ] "Şifremi Unuttum" linki
- [ ] "Hesabınız yok mu? Kayıt Ol" linki

#### Kayıt Ekranı
- [ ] `lib/screens/auth/register_screen.dart` oluştur
- [ ] Kullanıcı bilgileri formu
- [ ] Validasyon

---

### 4. Ana Sayfa ve Klinik Hakkında (Öncelik: Yüksek)

#### Ana Sayfa Layout
- [ ] `lib/screens/home/home_screen.dart` oluştur
- [ ] Scroll view
- [ ] Bölümler:
  - Klinik profili
  - Uzman kadrosu
  - Hizmetler
  - İletişim

#### Klinik Hakkında Ekranı
- [ ] `lib/screens/clinic/about_clinic_screen.dart` oluştur
- [ ] Header (geri ok + "Klinik Hakkında" + bilgi ikonu)
- [ ] Klinik profili (dairesel logo, isim, açıklama)
- [ ] Uzman kadromuz (3 kart, yatay scroll)
- [ ] Hizmetlerimiz (4 buton, 2x2 grid)
- [ ] İletişim ve ulaşım (adres + yol tarifi butonu)

---

### 5. Fotoğraf Yükleme Modülü (Öncelik: Çok Yüksek - Core Feature) ⭐

#### Temel Yapı
- [ ] `lib/screens/photo/photo_upload_screen.dart` oluştur
- [ ] Header ve açıklama metni
- [ ] 5 açı için kart listesi

#### Sensör Entegrasyonu
- [ ] `lib/services/sensor_service.dart` oluştur
- [ ] Jiroskop/ivmeölçer entegrasyonu
- [ ] Telefon açısı algılama

#### Kamera ve ML
- [ ] Kamera izinleri
- [ ] Yüz tanıma API entegrasyonu
- [ ] Gerçek zamanlı pozisyon algılama

#### Görsel ve Sesli Yönlendirme
- [ ] Overlay sistemi (şablon/silüet)
- [ ] Sesli geri bildirim
- [ ] Otomatik deklanşör

---

## 🎯 Bugün Yapılacaklar (Önerilen)

### 1. Header Bileşeni (30 dakika)
```dart
// lib/widgets/app_header.dart
class AppHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onBack;
  final Widget? trailing;
  
  // Implementation
}
```

### 2. Kart Bileşeni (20 dakika)
```dart
// lib/widgets/app_card.dart
class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  
  // Implementation
}
```

### 3. Alt Navigasyon (45 dakika)
- Bottom nav bar widget
- Routing sistemi
- 5 sekme ekranı (placeholder)

### 4. Ana Sayfa Başlangıcı (1 saat)
- Home screen layout
- Klinik profili bölümü
- Scroll view

---

## 📝 Kod Örnekleri

### Header Bileşeni Örneği
```dart
AppHeader(
  title: 'Klinik Hakkında',
  onBack: () => Navigator.pop(context),
  trailing: IconButton(
    icon: Icon(Icons.info_outline),
    onPressed: () {},
  ),
)
```

### Kart Bileşeni Örneği
```dart
AppCard(
  padding: EdgeInsets.all(16),
  child: Column(
    children: [
      Text('İçerik'),
    ],
  ),
)
```

---

## 🔄 Çalışma Akışı

1. **Bileşen oluştur** → `lib/widgets/`
2. **Ekran oluştur** → `lib/screens/`
3. **Test et** → Hot reload ile (r + Enter)
4. **Dokümante et** → Kod yorumları

---

## 💡 İpuçları

- Her bileşeni ayrı dosyada oluşturun
- Hot reload kullanın (r + Enter)
- Renk paletini kullanın (`AppColors`)
- Text stillerini kullanın (`AppTextStyles`)
- Tema ayarlarını kullanın (`AppTheme`)

---

## ✅ Başarı Kriterleri

- [ ] Header bileşeni tüm ekranlarda kullanılabilir
- [ ] Kart bileşeni tutarlı görünüyor
- [ ] Alt navigasyon çalışıyor
- [ ] Sayfa geçişleri sorunsuz
- [ ] Hot reload çalışıyor

---

**Sonraki Adım:** Header bileşenini oluşturmaya başlayalım! 🚀

