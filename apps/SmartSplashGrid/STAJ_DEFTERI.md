# YAZILIM MÜHENDİSLİĞİ / BİLGİSAYAR MÜHENDİSLİĞİ STAJ DEFTERİ

**Öğrenci Adı:** [Adınız Soyadınız]
**Proje Adı:** Bebek Anne (Anne Bebek Sağlığı ve Rehberlik Uygulaması)
**Platform:** Flutter (Cross-Platform Mobile Development)
**Dil:** Dart
**IDE:** Visual Studio Code / Android Studio
**Süre:** 40 İş Günü

---

## 1. HAFTA: TANIŞMA, ANALİZ VE KURULUM

### 1. Gün: Şirket Tanıtımı ve Proje Toplantısı
**Yapılan İşler:**
Stajın ilk gününde şirket yetkilileri ve yazılım ekibi ile tanışma toplantısı gerçekleştirildi. Proje yöneticim (Team Lead) ile yapılan birebir görüşmede, bu staj dönemi boyunca geliştireceğim "Bebek Anne" projesinin detayları konuşuldu.
**Toplantı Notları:**
- **Projenin Amacı:** Anneler için rehber niteliğinde, video eğitimler ve motivasyon içerikleri sunan bir mobil uygulama geliştirmek.
- **Beklentiler:** Uygulamanın sadece çalışan bir prototip olması değil, "Scalable" (Ölçeklenebilir) ve "Maintainable" (Sürdürülebilir) bir kod yapısına sahip olması gerektiği vurgulandı.
- **Görev:** İlk hafta ortam kurulumlarının yapılması ve Dart diline adaptasyon sağlanması istendi.

### 2. Gün: Geliştirme Ortamının (Environment) Hazırlanması
**Yapılan İşler:**
Şirketin kullandığı teknoloji yığınına (Tech Stack) uygun olarak bilgisayarıma gerekli kurulumları yaptım. Flutter SDK'nın en güncel stabil versiyonunu indirdim. Android Studio kurulumunu gerçekleştirdim ancak kod yazımı için daha hafif olduğu için VS Code tercih ettim.
**Teknik Detay:** Android emülatörlerin (AVD) performans ayarları yapıldı. HAXM (Hardware Accelerated Execution Manager) aktif edilerek emülatörün akıcı çalışması sağlandı. `flutter doctor` komutu ile tüm kurulumların ("ticks") yeşil olduğu teyit edildi.

### 3. Gün: Dart Dili Derinlemesine Analiz
**Yapılan İşler:**
Java ve C# geçmişim olduğu için Dart dilinin sentaksına alışmam gerekiyordu. Bugün, özellikle Flutter'ın temelini oluşturan asenkron yapıları inceledim.
**Öğrenilenler:**
- `Future`, `async` ve `await` yapılarının, UI thread'ini bloklamadan (non-blocking) ağ istekleri yapmak için ne kadar kritik olduğu anlaşıldı.
- Dart'ın "Null Safety" özelliği üzerine denemeler yapıldı. Değişkenlerin varsayılan olarak `null` olamaması özelliğinin (Sound Null Safety) çalışma zamanı hatalarını (Runtime Errors) nasıl azalttığı görüldü.

### 4. Gün: Flutter Widget Mimarisi ve Ağaç Yapısı
**Yapılan İşler:**
Flutter'ın "Everything is a Widget" (Her şey bir bileşendir) felsefesi üzerine araştırmalar yaptım.
- **Widget Tree:** UI elemanlarının nasıl iç içe (nested) geçtiği ve render edildiği incelendi.
- **Stateless vs Stateful:** UI durumunun değişip değişmemesine göre hangi widget tipinin seçilmesi gerektiği üzerine örnekler yapıldı. Basit bir sayaç (Counter) uygulaması yazılarak `setState()` metodunun ekranı nasıl yeniden çizdiği (rebuild) gözlemlendi.

### 5. Gün: Git ve Versiyon Kontrol Sistemi Kurulumu
**Yapılan İşler:**
Proje yöneticim, kodun güvenliği ve takibi için Git kullanımının zorunlu olduğunu belirtti.
- GitHub üzerinde özel bir depo (repository) oluşturuldu.
- `.gitignore` dosyası yapılandırılarak, gereksiz build dosyalarının (`/build`, `.dart_tool`) depoya gönderilmesi engellendi.
**Supervisor Notu:** "Commit mesajlarını yazarken 'Conventional Commits' standardına (feat:, fix:, docs:) uymalısın. Bu, takım çalışmasında neyin değiştiğini anlamamızı kolaylaştırır."

### 6. Gün: HAFTALIK DEĞERLENDİRME TOPLANTISI (Sprint Review)
**Yapılan İşler:**
Proje yöneticisi ile haftalık değerlendirme toplantısı yapıldı.
**Görüşülen Konular:**
- Kurulum aşamasının sorunsuz tamamlandığı raporlandı.
- Dart dili pratikleri sunuldu.
**Yeni Görevler:** Önümüzdeki hafta projenin mimari yapısının kurulması ve Tema (Theme) altyapısının oluşturulması kararlaştırıldı. Yönetici, "Kod yazmaya başlamadan önce klasör yapısını iyi düşün, spagetti kod istemiyoruz" uyarısında bulundu.

---

## 2. HAFTA: MİMARİ TASARIM VE TEMEL UI

### 7. Gün: Proje Mimarisi ve Klasör Yapısı (Architecture)
**Yapılan İşler:**
Yöneticinin uyarısını dikkate alarak, projenin klasör yapısını "Layer-First" (Katman öncelikli) yaklaşıma benzer şekilde kurguladım.
- `lib/core/`: Sabitler (Constants), Tema dosyaları.
- `lib/screens/`: Uygulamanın sayfaları.
- `lib/widgets/`: Tekrar kullanılabilir (Reusable) UI parçaları.
- `lib/models/`: Veri modelleri.
Bu yapı, projenin ileride büyümesi durumunda (Scalability) kodun yönetimini kolaylaştıracaktır.

### 8. Gün: Tema Yönetimi ve Tasarım Dili (Design System)
**Yapılan İşler:**
Uygulamanın kurumsal kimliği için renk paleti belirlendi. Hardcoded renk kodları yerine merkezi bir Tema dosyası oluşturuldu.
- `lib/theme/app_theme.dart` dosyası oluşturuldu.
- Ana renk: **Vivid Blue (#009BEF)** olarak belirlendi.
**Teknik Detay:** Flutter'ın `ThemeData` sınıfı kullanılarak uygulamanın varsayılan fontu, buton stilleri ve arka plan renkleri tek bir yerden yönetilebilir hale getirildi. Bu, "Clean Code" prensiplerinden "Single Source of Truth" ilkesine örnektir.

### 9. Gün: Varlık Yönetimi (Asset Management)
**Yapılan İşler:**
Uygulamada kullanılacak görseller (logolar, ikonlar) ve fontlar projeye dahil edildi.
- `pubspec.yaml` dosyası düzenlendi.
- `google_fonts` paketi eklendi. Supervisor, uygulamanın modern görünmesi için "Poppins" font ailesini önerdi.
- `assets/images/` klasörü oluşturuldu ve `appstore.png` görseli eklendi.

### 10. Gün: Splash Screen (Açılış Ekranı) Mantığı
**Yapılan İşler:**
Uygulamanın ilk açılış ekranı olan `SplashScreen` kodlandı.
- Amaç: Uygulama yüklenirken kullanıcıya markayı göstermek ve arka planda gerekli hazırlıkları yapmak.
- `StatefulWidget` kullanıldı çünkü animasyon durumu yönetilecekti.
- Ekrana logo yerleştirildi. Ancak logonun kare şeklinde olması göze hoş gelmiyordu.

### 11. Gün: Splash UI İyileştirmeleri ve Logo Düzenlemesi
**Yapılan İşler:**
Splash ekranındaki görsel problemler giderildi. Logonun keskin kenarlarını yuvarlatmak için `ClipOval` widget'ı kullanıldı.
**Supervisor Geri Bildirimi:** "Logoyu sadece koymak yetmez, kullanıcı uygulamanın donduğunu sanmasın. Bir indikatör (gösterge) veya animasyon eklemelisin."
Bu geri bildirim üzerine, logoya `ScaleTransition` (büyüme-küçülme) animasyonu ve altına bir `CircularProgressIndicator` (yükleniyor çubuğu) eklendi.

### 12. Gün: HAFTALIK DEĞERLENDİRME TOPLANTISI
**Yapılan İşler:**
İkinci toplantı yapıldı. Splash ekranı demosu yapıldı.
**Supervisor Yorumu:** "Mimarini beğendim, klasör yapısı düzenli. Splash ekranı animasyonları akıcı olmuş. Ancak kod içinde 'Magic String' dediğimiz sabit metinler görüyorum. Bunları bir sabitler dosyasına taşı."
**Yeni Görevler:** Kullanıcı girişi (Authentication) ekranlarının tasarlanması. `LoginScreen` ve `SignupScreen`.

---

## 3. HAFTA: KULLANICI ARAYÜZÜ (UI) GELİŞTİRME - AUTH

### 13. Gün: Refactoring ve Sabitlerin Ayrıştırılması
**Yapılan İşler:**
Toplantıdaki geri bildirimi uygulamak için `lib/core/constants/app_strings.dart` dosyasını oluşturdum. Uygulama içindeki "Hoşgeldiniz", "Giriş Yap" gibi tüm metinleri bu dosyaya taşıdım. Bu sayede ileride uygulamaya çoklu dil desteği (Localization) eklemek istersek, sadece bu dosyayı çevirmemiz yeterli olacak.

### 14. Gün: Login Ekranı Layout Tasarımı
**Yapılan İşler:**
Giriş ekranı tasarlandı. Kullanıcıdan E-posta ve Şifre alınacak input alanları oluşturuldu.
**Karşılaşılan Sorun:** Klavye açıldığında ekranın altındaki butonların görünmez olması ve "Pixel Overflow" hatası alınması.
**Çözüm:** Tüm ekran içeriği `SingleChildScrollView` widget'ı içine alınarak ekranın kaydırılabilir olması sağlandı.

### 15. Gün: Reusable Widgets (Tekrar Kullanılabilir Bileşenler)
**Yapılan İşler:**
Giriş ve Kayıt ekranlarında aynı tasarım diline sahip Text Field (Metin Kutusu) ve Butonlar kullanıldığı fark edildi. Kodu kopyala-yapıştır yapmak yerine (DRY Prensibi - Don't Repeat Yourself), `lib/widgets/` altında:
- `custom_text_field.dart`: Özel tasarımlı input alanı.
- `premium_button.dart`: Gradyan renkli özel buton.
bileşenleri oluşturuldu ve her iki ekranda da bu bileşenler çağrıldı.

### 16. Gün: Navigasyon ve Rota Yönetimi
**Yapılan İşler:**
Ekranlar arası geçiş mantığı kuruldu. Flutter'ın `Navigator` API'si incelendi.
- Splash ekranından 5 saniye sonra otomatik olarak Login ekranına geçiş (`pushReplacement`) sağlandı.
- `pushReplacement` kullanılmasının nedeni, kullanıcının geri tuşuna bastığında tekrar Splash ekranına dönmesini engellemekti (Back Stack yönetimi).

### 17. Gün: Signup (Kayıt Ol) Ekranı ve Form Validasyonu
**Yapılan İşler:**
Kayıt ekranı tamamlandı. Kullanıcı verilerinin doğruluğunu kontrol etmek için (Validation) basit mantıklar eklendi (Örn: E-posta '@' işareti içeriyor mu, şifre en az 6 karakter mi). Form `GlobalKey<FormState>` kullanılarak yönetildi.

### 18. Gün: HAFTALIK DEĞERLENDİRME TOPLANTISI
**Yapılan İşler:**
Üçüncü değerlendirme toplantısı. Login ve Signup akışları test edildi.
**Supervisor Yorumu:** "Widget'ları ayırman çok iyi olmuş, kod okunabilirliği yüksek. Şimdi uygulamanın ana kalbi olan Dashboard (Ana Ekran) kısmına geçelim. Burası kullanıcının en çok etkileşime gireceği yer, tasarımın 'Izgara' (Grid) yapısında olmasını ve ferah görünmesini istiyoruz."
**Yeni Görevler:** Dashboard tasarımı ve Grid yapısının kurulması.

---

## 4. HAFTA: DASHBOARD VE İÇERİK MİMARİSİ

### 19. Gün: Dashboard Planlaması ve GridView
**Yapılan İşler:**
Supervisor'ın isteği üzerine Dashboard ekranı `GridView` widget'ı kullanılarak tasarlandı. İki sütunlu bir yapı (CrossAxisCount: 2) kuruldu. Kartların en-boy oranları (`childAspectRatio`) test edilerek en estetik görünüm yakalanmaya çalışıldı.

### 20. Gün: Dashboard Kart Tasarımı ve Estetik Dokunuşlar
**Yapılan İşler:**
Her bir menü öğesi (Video Eğitimler, Sorular, vb.) için `DashboardCard` bileşeni yazıldı.
- Her karta farklı bir gradyan (renk geçişi) atandı.
- Kartlara hafif bir gölge (BoxShadow) ve yuvarlatılmış köşeler (BorderRadius) verilerek "Material Design" standartlarına uygun derinlik hissi yaratıldı.

### 21. Gün: Profil Ekranının Dönüşümü (Refactoring kararı)
**Yapılan İşler:**
Başlangıçta planlanan "Profil" sayfasının, projenin kapsamına göre şu aşamada gereksiz olduğu düşünüldü. Bunun yerine, uygulamanın ana fonksiyonu olan "Video Kütüphanesi"nin daha ön plana çıkarılmasına karar verildi. `ProfileScreen` dosyası, `VideoLibraryScreen` olarak yeniden faktörize edildi (Refactoring). Bu değişim, Agile (Çevik) geliştirme sürecinde gereksinimlerin değişebileceğine iyi bir örnektir.

### 22. Gün: Video Kütüphanesi UI (Slivers)
**Yapılan İşler:**
Video listesi ekranında standart `AppBar` yerine, aşağı kaydırıldığında küçülen ve başlığı ortalayan `SliverAppBar` yapısı kullanıldı. Bu, Apple ve Google'ın modern uygulamalarında sıkça rastlanan "Collapsible Toolbar" efektini sağladı. Kullanıcı deneyimi (UX) açısından daha akıcı bir his oluşturuldu.

### 23. Gün: Veri Modelleme (Data Modeling)
**Yapılan İşler:**
Videoları listelemek için bir veri modeline ihtiyaç vardı. `VideoModel` isminde basit bir dart sınıfı (POJO) oluşturuldu.
```dart
class VideoModel { String title; String duration; String thumbnail; ... }
```
Bu model kullanılarak sahte (mock) bir veri listesi oluşturuldu ve UI bu liste üzerinden beslendi.

### 24. Gün: HAFTALIK DEĞERLENDİRME TOPLANTISI
**Yapılan İşler:**
Dördüncü toplantı. Dashboard ve Video listesi gösterildi.
**Supervisor Yorumu:** "Tasarım gayet modern. Ancak videolar şu an sadece bir liste. Kullanıcı tıkladığında ne olacak? Video oynatma özelliğini entegre etmemiz lazım. Ayrıca uygulama açılışı biraz boş hissettiriyor, oraya kullanıcıyı karşılayacak bir şeyler ekleyelim."
**Yeni Görevler:** Video oynatıcı entegrasyonu ve Splash ekranına 'Günün Sözü' gibi bir özellik eklenmesi.

---

## 5. HAFTA: VİDEO ENTEGRASYONU VE LOGIC

### 25. Gün: Video Player Paket Araştırması
**Yapılan İşler:**
Flutter'da video oynatmak için en popüler paketler araştırıldı. `video_player` (resmi paket) ve `chewie` (daha gelişmiş UI) arasında karşılaştırma yapıldı.
**Karar:** Temel ihtiyaçları karşıladığı ve daha hafif olduğu için şimdilik `video_player` altyapısı üzerine kurulu basit bir yapı kullanılmasına, ileride ihtiyaç olursa `chewie`ye geçilmesine karar verildi.

### 26. Gün: Video Oynatma Mantığı
**Yapılan İşler:**
`pubspec.yaml` dosyasına video paketi eklendi. `assets/videos/` klasörü oluşturularak örnek videolar yüklendi. Video oynatıcı widget'ı, `StatefulWidget` içinde `initialize()` edilerek kaynak yönetimine (Resource Management) dikkat edildi. Sayfa kapandığında `dispose()` metodu ile video kontrolcüsünün bellekten temizlenmesi sağlandı (Memory Leak önleme).

### 27. Gün: Motivasyon Sistemi (Logic Geliştirme)
**Yapılan İşler:**
Supervisor'ın "uygulama açılışı boş hissettiriyor" yorumu üzerine, annelere yönelik motive edici sözler gösteren bir özellik geliştirdim.
- `AppStrings` sınıfına 20 adet motivasyon cümlesi eklendi.
- `dart:math` kütüphanesinin `Random` sınıfı kullanılarak, uygulama her açıldığında rastgele bir söz seçilmesi sağlandı.

### 28. Gün: Splash Ekranı Entegrasyonu
**Yapılan İşler:**
Seçilen rastgele söz, Splash ekranının alt kısmına, yarı saydam şık bir kutu (Container) içerisinde yerleştirildi. Bu, kullanıcıya her açılışta farklı bir deneyim sunarak uygulamanın "canlı" olduğu hissini verdi.

### 29. Gün: Önemli Bilgiler ve SSS Ekranları
**Yapılan İşler:**
Dashboard'daki diğer menüler olan "Önemli Bilgiler" ve "Sıkça Sorulan Sorular" sayfaları tamamlandı. Bu sayfalarda metin yoğunluklu içerik olduğu için, tipografi kurallarına (satır aralığı, yazı boyutu) dikkat edilerek okuma kolaylığı sağlandı.

### 30. Gün: HAFTALIK DEĞERLENDİRME TOPLANTISI
**Yapılan İşler:**
Beşinci toplantı. Tüm özellikler entegre edilmiş durumda.
**Supervisor Yorumu:** "Uygulama fonksiyonel olarak bitti sayılır. Ancak Android tarafında eksikler var. Uygulama ikonu hala Flutter logusu, açılışta beyaz bir ekran gelip gidiyor. Bir de kod içinde bazı yerlerde spagetti yapılar oluşmuş. Önümüzdeki hafta 'Polishing' (Cilalama) ve 'Optimization' haftası olsun."
**Yeni Görevler:** Native Splash, App Icon, Kod Temizliği.

---

## 6. HAFTA: NATIVE ENTEGRASYON VE ÇIKIŞ İŞLEMLERİ

### 31. Gün: Native Splash Screen (Android Layer)
**Yapılan İşler:**
Flutter uygulaması yüklenmeden önce Android işletim sisteminin gösterdiği açılış ekranını özelleştirdim.
- `android/app/src/main/res/drawable/launch_background.xml` dosyası düzenlendi.
- Varsayılan beyaz ekran yerine, uygulamanın marka rengi olan **Vivid Blue** arka plan olarak atandı.

### 32. Gün: Android Manifest ve İsimlendirme
**Yapılan İşler:**
Uygulamanın telefonda "smart_splash_grid" gibi teknik bir isimle görünmesi profesyonel değildi.
- `AndroidManifest.xml` dosyasında `android:label` etiketi "Bebek Anne" olarak güncellendi.
Böylece uygulamanın görünen adı markalaştırıldı.

### 33. Gün: App Icon ve Adaptive Icons
**Yapılan İşler:**
En zorlu kısımlardan biri ikon uyarlamasıydı. Android 12 ve üzeri sürümlerde ikonların "Adaptive" (Uyarlanabilir) olması gerekiyordu.
- `flutter_launcher_icons` paketi kullanıldı.
- `pubspec.yaml` içinde `adaptive_icon_background` olarak mavi renk, `foreground` olarak ise logo tanımlandı.
- Terminalden script çalıştırılarak tüm çözünürlükler (mipmap-xxxhdpi vb.) için ikonlar otomatik oluşturuldu. Beyaz çerçeve sorunu çözüldü.

### 34. Gün: Clean Code ve Refactoring
**Yapılan İşler:**
Supervisor'ın belirttiği "spagetti kod" parçaları temizlendi.
- Uzun ve karmaşık `build` metodları, daha küçük yardımcı metodlara (`_buildVideoCard` gibi) veya ayrı Widget sınıflarına bölündü.
- Kullanılmayan importlar ve değişkenler silindi (Dead Code Elimination).

### 35. Gün: Hata Ayıklama (Debugging)
**Yapılan İşler:**
Test sırasında `AssetNotFoundException` hatası ile karşılaşıldı. `pubspec.yaml` dosyasında klasör yolu tanımlanırken yapılan bir yazım hatası (typo) giderildi. `flutter clean` ve `flutter pub get` komutları ile proje önbelleği temizlenerek sorunun tamamen düzeldiği doğrulandı.

### 36. Gün: FİNAL DEĞERLENDİRME TOPLANTISI
**Yapılan İşler:**
Projenin son hali supervisor ve proje yöneticisine sunuldu.
**Geri Bildirimler:** "Staj süresince sıfırdan başlayıp çalışan, mimarisi düzgün ve markete çıkmaya hazır bir uygulama ortaya çıkardın. Özellikle Native taraftaki ikon ve splash düzenlemeleri çok profesyonel duruyor."
**Son Adımlar:** Projenin dokümantasyonu ve teslimi.

---

## 7. HAFTA: TESLİM VE KAPANIŞ

### 37. Gün: Geniş Kapsamlı Test (QA)
**Yapılan İşler:**
Uygulama farklı ekran boyutlarında (Tablet, Küçük ekranlı telefon) test edildi. Responsive tasarımın (Grid yapısı, Esnek görseller) düzgün çalıştığı teyit edildi.

### 38. Gün: Kaynak Kod Yönetimi (Git Push)
**Yapılan İşler:**
Projenin son kararlı sürümü (Stable Version) GitHub'a yüklendi. `README.md` dosyası düzenlenerek projenin nasıl kurulacağı ve çalıştırılacağı detaylıca anlatıldı.

### 39. Gün: Staj Defterinin Hazırlanması
**Yapılan İşler:**
40 günlük süreçte alınan notlar, karşılaşılan hatalar ve öğrenilen teknik bilgiler derlenerek bu staj defteri Rapor haline getirildi. Teknik terimlerin doğru kullanılmasına özen gösterildi.

### 40. Gün: Staj Kapanışı
**Yapılan İşler:**
Şirketteki çalışma arkadaşları ile vedalaşma ve stajın resmi olarak sonlandırılması. Bu staj süresince sadece Flutter/Dart değil, aynı zamanda yazılım yaşam döngüsü (SDLC), takım çalışması, temiz kod prensipleri ve zaman yönetimi konularında eşsiz deneyimler kazandım.

---
**Stajyer İmzası:** __________________
**Tarih:** .../.../2026

**İşyeri Yetkilisi İmza/Kaşe:** __________________
