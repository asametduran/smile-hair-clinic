# Product Requirements Document (PRD)
## Smile Hair Clinic Mobil Uygulama

**Versiyon:** 1.0  
**Tarih:** 2024  
**Proje Tipi:** MVP/Prototip  
**Platform:** iOS ve/veya Android (Hybrid - Flutter/React Native önerilir)

---

## 1. Proje Özeti

### 1.1 Vizyon
Smile Hair Clinic, saç ekimi ve saç sağlığı hizmetleri sunan bir klinik için geliştirilecek mobil uygulama. Uygulama, kullanıcıların saç/kafa derisi analizi için 5 farklı açıdan otomatik ve tutarlı fotoğraf çekebilmelerini sağlayan akıllı bir Self-Capture Tool içermektedir.

### 1.2 Temel Değer Önerisi
- **Kullanıcı Dostu Fotoğraf Çekimi:** Kullanıcılar, yardım almadan 5 kritik açıdan profesyonel kalitede fotoğraf çekebilir
- **Akıllı Yönlendirme:** Telefon pozisyonu, açısı ve kadraj için gerçek zamanlı geri bildirim
- **Otomatik Çekim:** Tüm kriterler sağlandığında otomatik deklanşör
- **Klinik Entegrasyonu:** Randevu yönetimi, doktor iletişimi ve süreç takibi

### 1.3 Hedef Kitle
- Saç ekimi veya saç sağlığı tedavisi düşünen potansiyel hastalar
- Mevcut hastalar (randevu takibi ve süreç yönetimi için)
- 25-65 yaş arası, mobil teknoloji kullanımına açık bireyler

---

## 2. Tasarım Gereksinimleri

### 2.1 Renk Paleti

#### Ana Renkler
- **Deep Navy (#0A2342):** Header, arka plan, güven ve otorite hissi
- **Pure White (#FFFFFF):** Card arka planları, boşluklar, kontrast

#### Vurgu Renkleri
- **Vivid Orange (#F15A24):** CTA butonları (Giriş Yap, Randevu Oluştur, Fotoğraf Yükle, İLERİ)
- **Soft Sky Blue (#76C7F0):** Sekonder butonlar, ikonlar, başarı durumları

#### Yardımcı Tonlar
- **Charcoal Gray (#2E3A46):** Yazılar, alt menü ikonları, gölgeler
- **Light Gray (#E6E7E8):** Kart kenarları, arayüz bölümleri arasında geçiş

### 2.2 Tema Dağılımı
- **Login & Onboarding:** Beyaz zemin + lacivert yazılar + turuncu buton
- **Dashboard:** Lacivert arka plan + beyaz kartlar + soft blue ikonlar
- **Fotoğraf Yükleme & Mesajlaşma:** Açık gri fon + lacivert header + turuncu aksanlar
- **Dark Mode (Gelecek):** #0A2342 → #1C3144 geçişi, turuncu aksanlar korunur

### 2.3 Tipografi
- **Başlıklar:** Bold, büyük punto
- **Gövde Metni:** Regular, okunabilir punto
- **Buton Metinleri:** Semi-bold, yeterli kontrast

---

## 3. Özellikler ve Fonksiyonellik

### 3.1 Onboarding & Giriş

#### 3.1.1 Onboarding Ekranları
- **Ekran 1:** Hoş geldin mesajı
  - Başlık: "Smile Hair Clinic'e Hoş Geldiniz!"
  - Alt başlık: "Saç sağlığınız için yenilikçi çözümler"
  - Arka plan: Bulanık klinik görseli + mavi gradient overlay
  - Navigasyon: 3 nokta göstergesi (ilk nokta aktif)
  - CTA: Turuncu "İLERİ" butonu
  - Alt link: "Giriş Yap"

- **Ekran 2:** Bilgilendirme
  - Başlık: "Sürecinizi Takip Edin"
  - Açıklama metni:
    - "Operasyon sonrası tüm süreci, iyileşme adımlarını ve size özel talimatları buradan kolayca yönetin."
    - "Uygulamamız, iyileşme döneminizi en konforlu şekilde geçirmeniz için tasarlandı. Fotoğraf yükleyerek doktorunuza danışabilir ve anlık bildirimler alabilirsiniz."
  - CTA: Turuncu "Anladım" butonu

- **Ekran 3:** (Opsiyonel - ek bilgilendirme)

#### 3.1.2 Giriş Sistemi
- Email/Telefon ile giriş
- Şifre sıfırlama
- Yeni kullanıcı kaydı

### 3.2 Ana Navigasyon

**Alt Menü (5 Sekme):**
1. **Ana Sayfa** (Home) - Aktif ikon: dolu ev
2. **Randevu** (Appointment) - Takvim ikonu
3. **Sağlık** (Health) - Kalp ikonu
4. **Bildirimler** (Notifications) - Daire ikonu
5. **Profil** (Profile) - Kişi silüeti ikonu

### 3.3 Ana Sayfa Özellikleri

#### 3.3.1 Klinik Hakkında Bölümü
- **Header:**
  - Geri ok (<) + "Klinik Hakkında" başlığı + Bilgi ikonu (ⓘ)
  - Koyu mavi arka plan, beyaz yazı

- **Klinik Profili:**
  - Büyük dairesel profil fotoğrafı (klinik logosu)
  - Klinik adı: "Smile Clinic Saç Ekimi Merkezi"
  - Açıklama: "Saç ekimi, PRP mezoterapi ve saç sağlığı hizmetlerinde uzman kadromuz."

- **Uzman Kadromuz:**
  - Başlık: "Uzman Kadromuz"
  - 3 uzman kartı (yatay scroll):
    - Dairesel profil fotoğrafı
    - İsim (örn: "Dr. Ali Osman")
    - Uzmanlık (örn: "Saç Ekimi Uzmanı")

- **Hizmetlerimiz:**
  - Başlık: "Hizmetlerimiz"
  - 4 hizmet butonu (2x2 grid):
    1. Saç Ekimi (saç teli ikonu)
    2. PRP Tedavisi (döngü + damla ikonu)
    3. Saç Analizi (büyüteç + saç teli ikonu)
    4. Mezoterapi (şırınga ikonu)
  - Her buton: Soft Sky Blue ikon + metin

- **İletişim ve Ulaşım:**
  - Başlık: "İletişim ve Ulaşım"
  - Adres: "1234 Sokak, Karatay, Konya" (konum pini ikonu ile)
  - CTA: Turuncu "Yolu Tarife Aç" butonu

### 3.4 Fotoğraf Yükleme Modülü (Self-Capture Tool) ⭐ CORE FEATURE

#### 3.4.1 Ekran Yapısı
- **Header:**
  - Geri ok (<) + "Fotoğraf Yükle" başlığı + Bilgi ikonu (ⓘ)
  - Koyu mavi arka plan

- **Açıklama Metni:**
  - "Saçınızın ön, tepe ve arka kısımlarının net fotoğraflarını yükleyin."
  - "Daha doğru analiz için yüksek çözünürlüklü fotoğraflar yükleyin." (Banner/tooltip)

#### 3.4.2 5 Fotoğraf Açısı

**1. Ön Görünüm (Tam Yüz Karşıdan)**
- Hedef: Yüzün ön cephesi
- Telefon pozisyonu: Yere paralel (0°)
- Yüz kameranın ortasında ve tam karşıdan bakmalı
- Kart görünümü: Dairesel önizleme + "Ön Görünüm" metni
- Aksiyonlar: "Fotoğraf Çek" / "Galeriden Seç" / "Değiştir" / "Sil"

**2. 45° Sağa Bakarken**
- Hedef: Yüzün ön ve sağ yan cephesi
- Yüz 45° sağa çevrilmeli
- Telefon açısı sabit tutulabilir
- Kart görünümü: Kamera ikonu + "45° Sağa" metni

**3. 45° Sola Bakarken**
- Hedef: Yüzün ön ve sol yan cephesi
- Yüz 45° sola çevrilmeli
- Telefon açısı sabit tutulabilir
- Kart görünümü: Kamera ikonu + "45° Sola" metni

**4. Tepe Kısmı (Vertex)** ⚠️ KRİTİK
- Hedef: Kafa derisinin tepe bölgesi
- Telefon pozisyonu: Başın üzerinde, 90° eğim
- Tepe derisi kameranın tam ortasında olmalı
- Kart görünümü: Kamera ikonu + "Tepe Görünüm" metni
- **Özel Yönlendirme:** Kullanıcı ekranı göremeyebilir, sesli geri bildirim kritik

**5. Arka Donör Bölgesi** ⚠️ KRİTİK
- Hedef: Ense üstü ve arka yan kısımlar
- Telefon pozisyonu: Başın arkasında
- Ense bölgesi net ve doğru kadrajda olmalı
- Kart görünümü: Kamera ikonu + "Arka Görünüm" metni
- **Özel Yönlendirme:** Kullanıcı ekranı göremeyebilir, sesli geri bildirim kritik

#### 3.4.3 Akıllı Pozlama Kılavuzu (Teknik Gereksinimler)

**Telefon Açısı Algılama:**
- Jiroskop/ivmeölçer sensörleri kullanılmalı
- Anlık açı ölçümü (0°, 45°, 90°)
- Görsel geri bildirim: Açı göstergesi (örn: yarım daire göstergesi)

**Kafa/Yüz Pozisyonu Algılama:**
- Yüz tanıma API'si (ML Kit, Vision Framework)
- Hedef bölgenin kadrajda olup olmadığı kontrolü
- Mesafe algılama (telefon-kafa arası mesafe)

**Görsel Kılavuzlama:**
- Şablon/silüet overlay (AR benzeri)
- Hedef bölgenin çerçevesi
- Doğru pozisyona yakınlık göstergesi (renk kodlu: kırmızı → sarı → yeşil)

**Sesli Yönlendirme:**
- Radar/bip sesi (alçalıp yükselen ton)
- Mesafe geri bildirimi (yaklaştıkça ses yükselir)
- Doğru pozisyon bulunduğunda onay sesi

#### 3.4.4 Otomatik Deklanşör Mekanizması

**Aktivasyon Kriterleri:**
1. Telefon açısı doğru aralıkta (tolerans: ±5°)
2. Hedef bölge kadrajda ve net
3. Mesafe uygun aralıkta
4. Yüz/kafa derisi tespit edildi

**Çekim Akışı:**
1. Kriterler sağlandığında tetiklenir
2. 3 saniyelik geri sayım (3, 2, 1) veya sesli uyarı
3. Otomatik çekim
4. Önizleme gösterimi
5. Onay/Red seçeneği

**Tutarlılık Algoritması:**
- Aynı kullanıcı için standart mesafe ve açı kaydı
- Sonraki çekimlerde referans olarak kullanım
- Kadraj standardizasyonu

### 3.5 Mesajlaşma Modülü

#### 3.5.1 Chat Ekranı
- **Header:**
  - Geri ok (<) + Klinik logosu (dairesel) + "Smile Hair Clinic"
  - Durum: Yeşil nokta + "Çevrimiçi"
  - Menü ikonu (3 nokta)

- **Randevu Kartı:**
  - Yaklaşan randevu bilgisi: "Çar, 25 Eki, 11:00 - Dr. Aylin Yılmaz"
  - Konum: "Sağlık Şehri" + "Yol Tarifi Al" butonu
  - Aksiyonlar: Turuncu video kamera ikonu + Gri telefon ikonu

- **Mesajlaşma Alanı:**
  - Tarih göstergesi: "Bugün"
  - Mesaj baloncukları:
    - Klinik: Beyaz baloncuk (sol)
    - Kullanıcı: Açık mavi baloncuk (sağ)
  - Zaman damgası
  - Okundu bilgisi (çift tik)

- **Mesaj Girişi:**
  - Galeri ikonu
  - Ek dosya ikonu (ataş)
  - Metin girişi: "Mesajınızı yazın..."
  - Gönder butonu: Turuncu dairesel buton (uçak ikonu)

- **Alt CTA:**
  - Turuncu "Yeni Randevu Al" butonu

### 3.6 Randevu Yönetimi

- Randevu listesi görünümü
- Yeni randevu oluşturma
- Randevu detayları
- Randevu iptal/değiştirme
- Randevu hatırlatıcıları

### 3.7 Sağlık/Süreç Takibi

- Operasyon sonrası süreç takibi
- İyileşme adımları
- Özel talimatlar
- Fotoğraf yükleme (doktor konsültasyonu için)
- Anlık bildirimler

### 3.8 Profil

- Kullanıcı bilgileri
- Hesap ayarları
- Bildirim tercihleri
- Çıkış yap

---

## 4. Teknik Gereksinimler

### 4.1 Platform ve Teknoloji

**Önerilen Stack:**
- **Framework:** Flutter veya React Native
- **Dil:** Dart (Flutter) veya JavaScript/TypeScript (React Native)
- **Minimum Versiyonlar:**
  - iOS: 13.0+
  - Android: API 21+ (Android 5.0+)

### 4.2 Sensör ve API Gereksinimleri

**Zorunlu:**
- Jiroskop sensörü
- İvmeölçer (Accelerometer)
- Kamera API'si
- Yüz tanıma API'si:
  - iOS: Vision Framework
  - Android: ML Kit Face Detection
  - Flutter: google_mlkit_face_detection
  - React Native: react-native-vision-camera + face-detector

**Opsiyonel:**
- AR Core/ARKit (şablon overlay için)
- Konum servisleri (klinik yol tarifi için)

### 4.3 Performans Gereksinimleri

- Fotoğraf çekimi: < 2 saniye
- Pozisyon algılama: Gerçek zamanlı (30+ FPS)
- Otomatik çekim tetikleme: < 500ms gecikme
- Uygulama başlatma: < 3 saniye

### 4.4 Depolama

- Fotoğraf kalitesi: Minimum 1080p (Full HD)
- Önerilen: 4K (tutarlılık için)
- Yerel depolama: Çekilen fotoğraflar geçici olarak cihazda saklanır
- Sunucu yükleme: Kullanıcı onayından sonra

---

## 5. Kullanıcı Akışları

### 5.1 İlk Kullanım Akışı

1. Uygulama açılışı
2. Onboarding ekranları (3 ekran)
3. Giriş/Kayıt
4. Ana sayfa
5. Fotoğraf yükleme modülüne yönlendirme

### 5.2 Fotoğraf Çekim Akışı

1. "Fotoğraf Yükle" ekranına giriş
2. İlk açı seçimi (Ön Görünüm)
3. Kamera açılışı
4. Gerçek zamanlı pozisyon geri bildirimi:
   - Görsel overlay (şablon)
   - Sesli yönlendirme
   - Açı/mesafe göstergesi
5. Kriterler sağlandığında:
   - Geri sayım (3, 2, 1) veya sesli uyarı
   - Otomatik çekim
6. Önizleme + Onay/Red
7. Sonraki açıya geçiş (2-5 tekrar)
8. Tüm 5 açı tamamlandığında:
   - Özet ekranı
   - Sunucuya yükleme
   - Başarı mesajı

### 5.3 Mesajlaşma Akışı

1. Chat sekmesine giriş
2. Yaklaşan randevu bilgisi görüntüleme
3. Mesaj yazma/gönderme
4. Fotoğraf/dosya ekleme
5. Doktor yanıtı bekleme
6. Bildirim alma

---

## 6. Başarı Kriterleri

### 6.1 Kullanıcı Deneyimi

- **Tepe ve Arka Donör çekimleri:** %80+ başarı oranı (ilk denemede)
- **Kullanıcı memnuniyeti:** 4.5/5.0+ (app store rating)
- **Çekim süresi:** Ortalama 5-7 dakika (5 açı için)

### 6.2 Teknik Performans

- **Pozisyon algılama doğruluğu:** ±5° tolerans
- **Otomatik çekim başarı oranı:** %90+
- **Uygulama çökme oranı:** < 1%
- **Fotoğraf kalitesi:** Tüm açılarda net ve kullanılabilir

### 6.3 Tutarlılık

- Aynı kullanıcı için farklı zamanlarda aynı açı ve kadraj
- Standart mesafe ve pozisyon referansı

---

## 7. Güvenlik ve Gizlilik

- Kullanıcı verilerinin şifreli depolanması
- Fotoğrafların güvenli sunucuya yüklenmesi
- KVKK/GDPR uyumluluğu
- Kullanıcı onayı olmadan veri paylaşımı yapılmaması

---

## 8. Teslimat Planı

### 8.1 MVP Özellikleri (Faz 1)

- ✅ Onboarding ekranları
- ✅ Giriş/Kayıt sistemi
- ✅ Ana navigasyon
- ✅ Klinik Hakkında ekranı
- ✅ Fotoğraf Yükleme modülü (5 açı)
- ✅ Temel pozisyon algılama
- ✅ Otomatik deklanşör
- ✅ Mesajlaşma modülü (temel)

### 8.2 Gelişmiş Özellikler (Faz 2)

- AR overlay (şablon gösterimi)
- Gelişmiş sesli yönlendirme
- Tutarlılık algoritması (referans kaydı)
- Randevu yönetimi (tam entegrasyon)
- Süreç takibi modülü

### 8.3 Gelecek Özellikler (Faz 3)

- Dark mode
- Çoklu dil desteği
- AI destekli saç analizi
- Video konsültasyon
- Push notification sistemi

---

## 9. Dokümantasyon Gereksinimleri

### 9.1 Teknik Dokümantasyon

- Mimari diyagram
- API dokümantasyonu
- Sensör entegrasyon detayları
- Algoritma açıklamaları

### 9.2 Tasarım Dokümantasyonu

- UI/UX mockup'ları
- Renk paleti ve tipografi kılavuzu
- Bileşen kütüphanesi
- Kullanıcı akış diyagramları

### 9.3 Kullanıcı Dokümantasyonu

- Kullanım kılavuzu
- SSS (Sık Sorulan Sorular)
- Video tutorial (opsiyonel)

---

## 10. Notlar ve Özel Durumlar

### 10.1 Kritik Zorluklar

1. **Tepe ve Arka Donör çekimleri:** Kullanıcı ekranı göremeyebilir
   - **Çözüm:** Sesli geri bildirim + radar sesi

2. **Tutarlılık:** Farklı zamanlarda aynı açı ve kadraj
   - **Çözüm:** Referans kaydı + standart algoritma

3. **Performans:** Gerçek zamanlı algılama + yüksek kaliteli çekim
   - **Çözüm:** Optimize edilmiş ML modelleri + sensör filtreleme

### 10.2 Varsayımlar

- Kullanıcıların modern akıllı telefonları var (sensör desteği)
- İnternet bağlantısı mevcut (sunucu yükleme için)
- Kullanıcılar temel mobil uygulama kullanımını biliyor

---

## 11. İletişim ve Onay

**Proje Sahibi:** Smile Hair Clinic  
**Geliştirme Ekibi:** [Ekip Adı]  
**Son Güncelleme:** [Tarih]

---

**Not:** Bu PRD, hackathon gereksinimlerine göre hazırlanmıştır ve MVP seviyesinde bir prototip için tasarlanmıştır. Üretim ortamına geçmeden önce detaylı test ve kullanıcı geri bildirimleri alınmalıdır.

