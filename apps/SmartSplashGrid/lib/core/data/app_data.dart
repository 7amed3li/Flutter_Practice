import '../models/breastfeeding_models.dart';

/// Static data for breastfeeding information content
/// 
/// Contains all the educational content for the app including
/// information topics, FAQs, and video tutorials.
class AppData {
  AppData._();

  /// Important breastfeeding information topics
  static const List<BreastfeedingTopic> importantTopics = [
    BreastfeedingTopic(
      id: 'insufficient_milk',
      title: 'Yetersiz Süt Üretimi',
      iconName: 'water_drop',
      content: 'Emzirme döneminde birçok kadın sütünün yetersiz olduğu yanılgısına varmaktadır. Sütüm yetiyor mu bölümündeki değerlendirmeye göre sütünüz yetersiz ise arttırmak için öneriler şu şekildedir:',
      bulletPoints: [
        'Günde en az 2 litre su tüketimi',
        'Düzenli uyku, dinlenmek',
        'Beslenmeye özen göstermek',
        'Bebek ile bol ten tene temas, loş sakin ortam tercih edilebilir',
        'Bebeğin emzirme pozisyonuna dikkat ederek emzirmede yanlışlık varsa gidermek',
        'Emzirme seansları sonrası pompa veya elle sağım yöntemi ile memeye uyarı vererek süt üretimini arttırmak',
        'Galaktogog besinleri tüketmek',
        'Oksitosin masajı desteği almak',
        'Gece emzirmelerine özen göstermek',
        'Memeyi sürekli boş bırakmak daha çok üretim demektir: dolu meme=az üretim, boş meme=çok üretim',
      ],
    ),
  ];

  /// Breastfeeding problems and solutions
  static const List<BreastfeedingTopic> breastfeedingProblems = [
    BreastfeedingTopic(
      id: 'blockage',
      title: 'Tıkanıklık',
      iconName: 'block',
      content: 'Yanlış teknikle ve yetersiz emzirme sonucu sütün tamamen boşaltılamamasında meydana gelmektedir. Memede ısı artışı, ödem ve ağrıyla belirti verir. Sağım yaparak meme rahatlatılabilmektedir.',
    ),
    BreastfeedingTopic(
      id: 'nipple_pain',
      title: 'Meme Ucu Ağrısı ve Çatlak',
      iconName: 'healing',
      content: 'Genellikle bebeğin memeye yanlış yerleşmesi sonucu meydana gelir. Bebeğin doğru pozisyonda emmesi ile bu durum çözümlenir. Emzirme öncesi ve sonrası anne sütü sürmek meme ucuna faydalı olmaktadır.',
    ),
    BreastfeedingTopic(
      id: 'mastitis',
      title: 'Mastit',
      iconName: 'thermostat',
      content: 'Memenin uzun süren tıkanıklığı sonucunda memede ağrı, ateş, enfeksiyon görülmesidir. Memeyi sağarak tamamen boşaltıp ardından soğuk kompres yapılması gerekmektedir. Enfeksiyon bulguları varsa doktor desteği alınarak antibiyotik kullanımına başlanmalıdır. Bebeği bu dönemde daha çok emzirerek memenin boşaltılmasını kolaylaştırabilirsiniz.',
    ),
    BreastfeedingTopic(
      id: 'inverted_nipple',
      title: 'İçe Dönük Meme Ucu',
      iconName: 'adjust',
      content: 'Memenin içe dönük olması emzirme sorunu değildir. Çünkü bebek meme ucunu değil areolayı emer. Areolayı bebeğin damağına yerleştirdiğinizde bu sorun olmaz. Ancak sorun devam ediyorsa ters şırınga yöntemi ile veya pompa ile destek sağlanabilir. Bebeğin düzenli emmesi ile de meme ucu sorunu çözümlenecektir.',
    ),
    BreastfeedingTopic(
      id: 'hyperlactation',
      title: 'Hiperlaktasyon',
      iconName: 'waves',
      content: 'Memelerde olması gerektiğinden fazla süt üretimi durumunda sütün tazyikli akışı ile birlikte bebeğin emzirme esnasında öksürme boğulma gibi belirtiler göstermesi ve bebekte yoğun gaz olmasıyla anlaşılmaktadır. Bu durumda laktoz yönünden zengin olan ön süt emzirme öncesi 1-3 dk sağılmalı ardından tazyikli akış durduğunda bebeğe meme verilmelidir. Tazyikli memeyi rahatlatmak için soğuk kompress uygulanabilir. Mümkün olduğunca meme uyarılmamalıdır. Emzirirken sırt üstü uzanmak akışı yavaşlatacağı için sırt üstü yatarak emzirme pozisyonu kullanılabilir.',
    ),
  ];

  /// Frequently asked questions
  static const List<FAQItem> faqItems = [
    FAQItem(
      question: 'Bebeği hangi sıklıkta emzirmeliyim?',
      answer: 'Bebek her istediğinde ve her ağladığında, yenidoğan döneminde en geç iki saatte bir, en az 15-20 dk olacak şekilde emzirilmelidir.',
      iconName: 'schedule',
    ),
    FAQItem(
      question: 'Bebeği emzirmek için ağlamasını beklemeli miyim?',
      answer: '2 saat doluyorsa ve bebek hareketlerinde artış varsa, sakinliği bozuluyorsa acıkmış demektir, ağlayan bebeğin sakinleşme süreci ile birlikte bu durum zorlaşacağı için bebek acıkma belirtisi gösterdiğinde emzirmeye başlamak doğru olan yaklaşımdır.',
      iconName: 'child_care',
    ),
    FAQItem(
      question: 'Meme bakımı olarak ne yapılmalıdır?',
      answer: 'Memeyi temizlemek için sabun jel gibi maddelerin kullanımına gerek yoktur. Günlük alınan duş yeterlidir. Anne sütü içeriğindeki mikroorganizmalar sayesinde meme ucunu koruyucu etkiye sahiptir. Her emzirme öncesi ve sonrası meme ucuna anne sütü sürmek gerekmektedir.',
      iconName: 'spa',
    ),
    FAQItem(
      question: 'Süt artırmaya destek besinler olarak öneriler?',
      answer: 'Su, kuru incir, kuru üzüm, çemen otu, çörek otu, hurma, kuruyemişler, havuç, armut, dereotu, beyaz üzüm, ıspanak (yeşil yapraklı besinler), dut… (bu besinler alerjik reaksiyon da gösterebileceği için dikkatli kullanım gerektirmektedir, her annede fayda göstermeyebilir)',
      iconName: 'restaurant',
    ),
    FAQItem(
      question: 'Meme ucu bakımı için kullanılabilecek alternatifler',
      answer: 'Anne sütü, zeytinyağ, hindistan cevizi yağı, aleo vera, sarı kantaron yağı, çay kompresi, ayva çekirdeği jeli… (bu besinler alerjik reaksiyon da gösterebileceği için dikkatli kullanım gerektirmektedir, her annede fayda göstermeyebilir)',
      iconName: 'eco',
    ),
  ];

  /// Video tutorial categories and items
  static const List<VideoTutorial> videoTutorials = [
    VideoTutorial(
      title: 'Emzirme Pozisyonları',
      description: 'Doğru emzirme pozisyonları ve teknikleri',
      videoPath: 'assets/videos/emzirme_pozisyonlari.mp4',
      thumbnailPath: 'assets/thumbnails/emzirme_pozisyonlari.jpg',
      durationSeconds: 180,
    ),
    VideoTutorial(
      title: 'Elle Sağım',
      description: 'Elle süt sağım tekniği',
      videoPath: 'assets/videos/elle_sagim.mp4',
      thumbnailPath: 'assets/thumbnails/elle_sagim.jpg',
      durationSeconds: 120,
    ),
    VideoTutorial(
      title: 'Oksitosin Masajı',
      description: 'Süt akışını artırmak için oksitosin masajı',
      videoPath: 'assets/videos/oksitosin_masaji.mp4',
      thumbnailPath: 'assets/thumbnails/oksitosin_masaji.jpg',
      durationSeconds: 90,
    ),
    VideoTutorial(
      title: 'Meme Bakımı',
      description: 'Emzirme döneminde meme bakımı',
      videoPath: 'assets/videos/meme_bakimi.mp4',
      thumbnailPath: 'assets/thumbnails/meme_bakimi.jpg',
      durationSeconds: 150,
    ),
    VideoTutorial(
      title: 'Pompa Kullanımı',
      description: 'Süt pompası nasıl kullanılır',
      videoPath: 'assets/videos/pompa_kullanimi.mp4',
      thumbnailPath: 'assets/thumbnails/pompa_kullanimi.jpg',
      durationSeconds: 200,
    ),
  ];
}
