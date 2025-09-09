import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      // Header
      'welcome': 'Welcome to My Portfolio',
      // Skill Details
      'skill_flutter_title': 'Flutter Development',
      'skill_flutter_desc':
          'Experienced in building modern Flutter applications using the latest technologies and best practices. Proficient in both mobile and web development with Flutter.',
      'skill_flutter_chip_1': 'Localization',
      'skill_flutter_chip_2': 'State Management (Provider, Bloc/Cubit)',
      'skill_flutter_chip_3': 'Theme Management',
      'skill_flutter_chip_4': 'Network Management (Dio, HTTP, Vexana)',
      'skill_flutter_chip_5': 'Cache Management (Shared Preferences)',
      'skill_flutter_chip_6': 'Atomic Design',
      'skill_flutter_chip_7': 'Pixel Perfect Figma Development',
      'skill_flutter_chip_8': 'In-App Purchases',
      'skill_flutter_chip_9': 'Store Publishing',
      'skill_flutter_chip_10': 'AdMob Integration',

      'skill_android_title': 'Modern Android Development',
      'skill_android_desc':
          'Experienced in building modern Android applications using the latest technologies and best practices. Proficient in both traditional XML-based UI development and modern declarative UI with Jetpack Compose.',
      'skill_android_chip_1': 'Coroutines',
      'skill_android_chip_2': 'MVVM Architecture',
      'skill_android_chip_3': 'Jetpack Compose',
      'skill_android_chip_4': 'Dependency Injection (Hilt)',
      'skill_android_chip_5': 'Firebase Integration',
      'skill_android_chip_6': 'Pixel Perfect UI Development',

      'skill_firebase_title': 'Full Firebase Integration',
      'skill_firebase_desc':
          'Comprehensive experience with Firebase platform, implementing end-to-end solutions including real-time database operations, user authentication, crash reporting, analytics tracking, and push notifications. Proficient in optimizing app performance and user experience through Firebase services.',
      'skill_firebase_chip_1': 'Crashlytics',
      'skill_firebase_chip_2': 'Authentication',
      'skill_firebase_chip_3': 'Firestore Database',
      'skill_firebase_chip_4': 'Analytics',
      'skill_firebase_chip_5': 'A/B Testing',
      'skill_firebase_chip_6': 'Remote Config',
      'skill_firebase_chip_7': 'Cloud Messaging (FCM)',
      // Project Topics
      'topic_flutter': 'Flutter',
      'topic_dart': 'Dart',
      'topic_animation': 'Animation',
      'topic_game_dev': 'Game Development',
      'topic_localization': 'Localization',
      'topic_admob': 'AdMob',
      'topic_state_management': 'State Management',
      'topic_data_viz': 'Data Visualization',
      'topic_local_storage': 'Local Storage',
      'topic_charts': 'Charts',
      'topic_firebase_auth': 'Firebase Auth',
      'topic_clean_arch': 'Clean Architecture',
      'topic_custom_widgets': 'Custom Widgets',
      'topic_mvvm': 'MVVM Architecture',
      'topic_base_services': 'Base Services',
      'topic_ui_design': 'UI Design',
      'topic_notifications': 'Notifications',
      'topic_educational': 'Educational Content',
      'topic_ui_components': 'UI Components',
      'topic_reusable_code': 'Reusable Code',
      'app_quicko_description':
          'A collection of 10+ quick and engaging minigames for instant fun and brain training. Features include global leaderboards, progress tracking, and support for 10 languages.',
      'app_quicko_feature_1': '10+ Fast & Fun Minigames',
      'app_quicko_feature_2': 'Global Leaderboards',
      'app_quicko_feature_3': 'Progress Tracking',
      'app_quicko_feature_4': 'Dark/Light Mode',
      'app_quicko_feature_5': '10 Languages Support',
      'app_quicko_feature_6': 'Cross-Platform',
      'app_elements_description':
          'An educational app that makes learning the periodic table fun and interactive. Features comprehensive element information, quizzes, and daily notifications.',
      'app_elements_feature_1': 'Comprehensive Element Info',
      'app_elements_feature_2': 'Interactive Quiz Section',
      'app_elements_feature_3': 'Daily Notifications',
      'app_elements_feature_4': 'Bilingual Support (EN/TR)',
      'app_elements_feature_5': 'Element Search',
      'app_elements_feature_6': 'Educational Content',
      'project_quicko':
          'A collection of 10+ quick and engaging minigames for instant fun and brain training. Features include global leaderboards, progress tracking, and support for 10 languages.',
      'project_finbrain':
          'Financial education and management application. Offers budget tracking, income-expense analysis, graphical reporting, and financial goal setting features. Includes personalized financial recommendations and analytical dashboard.',
      'project_firebase_auth':
          'Modern and customizable Firebase authentication pages. Includes email/password login, registration, password reset, and social media login features.',
      'project_base':
          'Starting template for Flutter projects. Contains MVVM architecture, ready-made services, customizable widgets, and best practice examples.',
      'project_favorite_books':
          'Book collection management application. Offers features for saving favorite books, taking notes, and creating reading lists.',
      'project_elements':
          'Periodic table learning application. Provides an educational experience with element details, quizzes, and daily notifications.',
      'project_widgets':
          'Reusable Flutter widget collection. Contains customized Container, Button, Card, ListTile, and other widgets.',
      'hi_im': 'Hi, I\'m',
      'flutter_developer': 'Flutter Developer',
      'software_engineer': 'Computer Engineer',
      'get_in_touch': 'Get in touch',
      'view_projects': 'View Projects',
      'download_cv': 'Download CV',

      // Navigation
      'home': 'Home',
      'about': 'About',
      'skills': 'Skills',
      'projects': 'Projects',
      'apps': 'Apps',
      'contact': 'Contact',

      // About Section
      'about_me': 'About Me',
      'professional_background': 'Professional Background',
      'about_description':
          'I am a  Mobile Application Developer at SNT Software and Financial Technologies Inc., with over 2 years of professional experience in Flutter-based cross-platform development. I specialize in building high-performance, scalable, and user-centric mobile applications, utilizing state management solutions such as Bloc/Cubit and Provider.',
      'about_experience':
          'I have actively contributed to end-to-end project lifecycles, from crafting detailed UI/UX designs with custom Flutter widgets to integrating real-time data through socket architectures and developing Firebase-powered applications (Authentication, Firestore, Cloud Messaging, etc.).',
      'about_additional':
          'In addition to my professional work, I have published indie applications on the Play Store, showcasing my passion for innovation and continuous learning. My focus is on delivering reliable, maintainable, and high-quality mobile solutions that exceed user expectations.',

      // Skills Section
      'skills_title': 'Skills',
      'technologies': 'Technologies I Work With',
      'click_details': 'Click for details',
      'flutter_expertise': 'Flutter Expertise',
      'android_expertise': 'Android Expertise',
      'firebase_expertise': 'Firebase Expertise',

      // Projects Section
      'open_source_projects': 'Open Source Projects',
      'featured_projects': 'Featured Projects',
      'projects_description':
          'Showcasing innovative solutions and technical expertise through diverse Flutter projects',
      'view_on_github': 'View on GitHub',

      // Published Apps Section
      'published_apps': 'Published Apps',
      'my_apps_on_stores': 'My Apps on Stores',
      'check_published_apps': 'Check out my published applications',
      'google_play': 'Google Play',
      'app_store': 'App Store',

      // Contact Section
      'contact_me': 'Contact Me',
      'lets_connect': 'Let\'s Connect',
      'contact_description':
          'Feel free to reach out for collaborations or just a friendly hello',
    },
    'tr': {
      // Header
      'welcome': 'Portfolyoma Hoş Geldiniz',
      // Skill Details
      'skill_flutter_title': 'Flutter Geliştirme',
      'skill_flutter_desc':
          'En son teknolojileri ve en iyi uygulamaları kullanarak modern Flutter uygulamaları geliştirme konusunda deneyimli. Flutter ile hem mobil hem de web geliştirmede uzman.',
      'skill_flutter_chip_1': 'Yerelleştirme',
      'skill_flutter_chip_2': 'Durum Yönetimi (Provider, Bloc/Cubit)',
      'skill_flutter_chip_3': 'Tema Yönetimi',
      'skill_flutter_chip_4': 'Ağ Yönetimi (Dio, HTTP, Vexana)',
      'skill_flutter_chip_5': 'Önbellek Yönetimi (Shared Preferences)',
      'skill_flutter_chip_6': 'Atomik Tasarım',
      'skill_flutter_chip_7': 'Piksel Mükemmel Figma Geliştirme',
      'skill_flutter_chip_8': 'Uygulama İçi Satın Alma',
      'skill_flutter_chip_9': 'Mağaza Yayınlama',
      'skill_flutter_chip_10': 'AdMob Entegrasyonu',

      'skill_android_title': 'Modern Android Geliştirme',
      'skill_android_desc':
          'En son teknolojileri ve en iyi uygulamaları kullanarak modern Android uygulamaları geliştirme konusunda deneyimli. Hem geleneksel XML tabanlı UI geliştirme hem de modern deklaratif UI ile Jetpack Compose konusunda uzman.',
      'skill_android_chip_1': 'Coroutines',
      'skill_android_chip_2': 'MVVM Mimarisi',
      'skill_android_chip_3': 'Jetpack Compose',
      'skill_android_chip_4': 'Bağımlılık Enjeksiyonu (Hilt)',
      'skill_android_chip_5': 'Firebase Entegrasyonu',
      'skill_android_chip_6': 'Piksel Mükemmel UI Geliştirme',

      'skill_firebase_title': 'Tam Firebase Entegrasyonu',
      'skill_firebase_desc':
          'Firebase platformunda kapsamlı deneyim, gerçek zamanlı veritabanı işlemleri, kullanıcı kimlik doğrulama, çökme raporlama, analitik takibi ve push bildirimleri dahil uçtan uca çözümler uygulama. Firebase servisleri aracılığıyla uygulama performansını ve kullanıcı deneyimini optimize etme konusunda uzman.',
      'skill_firebase_chip_1': 'Crashlytics',
      'skill_firebase_chip_2': 'Kimlik Doğrulama',
      'skill_firebase_chip_3': 'Firestore Veritabanı',
      'skill_firebase_chip_4': 'Analitik',
      'skill_firebase_chip_5': 'A/B Testi',
      'skill_firebase_chip_6': 'Uzaktan Yapılandırma',
      'skill_firebase_chip_7': 'Cloud Messaging (FCM)',
      // Project Topics
      'topic_flutter': 'Flutter',
      'topic_dart': 'Dart',
      'topic_animation': 'Animasyon',
      'topic_game_dev': 'Oyun Geliştirme',
      'topic_localization': 'Yerelleştirme',
      'topic_admob': 'AdMob',
      'topic_state_management': 'Durum Yönetimi',
      'topic_data_viz': 'Veri Görselleştirme',
      'topic_local_storage': 'Yerel Depolama',
      'topic_charts': 'Grafikler',
      'topic_firebase_auth': 'Firebase Kimlik Doğrulama',
      'topic_clean_arch': 'Temiz Mimari',
      'topic_custom_widgets': 'Özel Widget\'lar',
      'topic_mvvm': 'MVVM Mimarisi',
      'topic_base_services': 'Temel Servisler',
      'topic_ui_design': 'Arayüz Tasarımı',
      'topic_notifications': 'Bildirimler',
      'topic_educational': 'Eğitici İçerik',
      'topic_ui_components': 'Arayüz Bileşenleri',
      'topic_reusable_code': 'Yeniden Kullanılabilir Kod',
      'app_quicko_description':
          '10\'dan fazla hızlı ve eğlenceli mini oyun koleksiyonu. Global skor tablosu, ilerleme takibi ve 10 dil desteği gibi özellikler içerir.',
      'app_quicko_feature_1': '10+ Hızlı ve Eğlenceli Mini Oyun',
      'app_quicko_feature_2': 'Global Skor Tablosu',
      'app_quicko_feature_3': 'İlerleme Takibi',
      'app_quicko_feature_4': 'Açık/Koyu Tema',
      'app_quicko_feature_5': '10 Dil Desteği',
      'app_quicko_feature_6': 'Çoklu Platform',
      'app_elements_description':
          'Periyodik tabloyu öğrenmeyi eğlenceli ve interaktif hale getiren bir eğitim uygulaması. Kapsamlı element bilgileri, quizler ve günlük bildirimler içerir.',
      'app_elements_feature_1': 'Kapsamlı Element Bilgisi',
      'app_elements_feature_2': 'İnteraktif Quiz Bölümü',
      'app_elements_feature_3': 'Günlük Bildirimler',
      'app_elements_feature_4': 'İki Dil Desteği (TR/EN)',
      'app_elements_feature_5': 'Element Arama',
      'app_elements_feature_6': 'Eğitici İçerik',
      'project_quicko':
          'Eğlenceli mini oyunlar koleksiyonu. Kullanıcı dostu arayüz, yüksek skor takibi ve farklı zorluk seviyeleri ile eğlenceli bir deneyim sunar. Global skor tablosu ve 10 dil desteği içerir.',
      'project_finbrain':
          'Finansal eğitim ve yönetim uygulaması. Bütçe takibi, gelir-gider analizi, grafiksel raporlama ve finansal hedef belirleme özellikleri sunar. Kişiselleştirilmiş finansal öneriler ve analitik dashboard içerir.',
      'project_firebase_auth':
          'Modern ve özelleştirilebilir Firebase kimlik doğrulama sayfaları. Email/şifre girişi, kayıt, şifre sıfırlama ve sosyal medya girişi özellikleri içerir.',
      'project_base':
          'Flutter projeleri için başlangıç şablonu. MVVM mimarisi, hazır servisler, özelleştirilebilir widgetlar ve best practice örnekleri içerir.',
      'project_favorite_books':
          'Kitap koleksiyonu yönetim uygulaması. Favori kitapları kaydetme, notlar alma ve okuma listesi oluşturma özellikleri sunar.',
      'project_elements':
          'Periyodik tablo öğrenme uygulaması. Element detayları, quizler ve günlük bildirimler ile eğitici bir deneyim sunar.',
      'project_widgets':
          'Yeniden kullanılabilir Flutter widget koleksiyonu. Container, Button, Card, ListTile ve diğer özelleştirilmiş widgetlar içerir.',
      'hi_im': 'Merhaba, Ben',
      'flutter_developer': 'Flutter Geliştirici',
      'software_engineer': 'Bilgisayar Mühendisi',
      'get_in_touch': 'İletişime Geç',
      'view_projects': 'Projeleri Gör',
      'download_cv': 'CV İndir',

      // Navigation
      'home': 'Ana Sayfa',
      'about': 'Hakkımda',
      'skills': 'Yetenekler',
      'projects': 'Projeler',
      'apps': 'Uygulamalar',
      'contact': 'İletişim',

      // About Section
      'about_me': 'Hakkımda',
      'professional_background': 'Profesyonel Geçmiş',
      'about_description':
          'SNT Yazılım ve Finansal Teknolojiler A.Ş.\'de  Mobil Uygulama Geliştiricisi olarak çalışmaktayım ve Flutter tabanlı çapraz platform geliştirmede 2 yılı aşkın profesyonel deneyime sahibim. Bloc/Cubit ve Provider gibi durum yönetim çözümlerini kullanarak yüksek performanslı, ölçeklenebilir ve kullanıcı odaklı mobil uygulamalar geliştirme konusunda uzmanım.',
      'about_experience':
          'Özel Flutter widget\'ları ile detaylı UI/UX tasarımlarından, socket mimarileri aracılığıyla gerçek zamanlı veri entegrasyonuna ve Firebase destekli uygulamaların (Kimlik Doğrulama, Firestore, Cloud Messaging, vb.) geliştirilmesine kadar uçtan uca proje yaşam döngülerine aktif katkıda bulundum.',
      'about_additional':
          'Profesyonel çalışmalarımın yanı sıra, Play Store\'da bağımsız uygulamalar yayınladım ve bu da inovasyon ve sürekli öğrenmeye olan tutkumu gösteriyor. Odak noktam, kullanıcı beklentilerini aşan güvenilir, sürdürülebilir ve yüksek kaliteli mobil çözümler sunmak.',

      // Skills Section
      'skills_title': 'Yetenekler',
      'technologies': 'Çalıştığım Teknolojiler',
      'click_details': 'Detaylar için tıklayın',
      'flutter_expertise': 'Flutter Uzmanlığı',
      'android_expertise': 'Android Uzmanlığı',
      'firebase_expertise': 'Firebase Uzmanlığı',

      // Projects Section
      'open_source_projects': 'Açık Kaynak Projeler',
      'featured_projects': 'Öne Çıkan Projeler',
      'projects_description':
          'Çeşitli Flutter projeleri ile yenilikçi çözümler ve teknik uzmanlık',
      'view_on_github': 'GitHub\'da Görüntüle',

      // Published Apps Section
      'published_apps': 'Yayınlanan Uygulamalar',
      'my_apps_on_stores': 'Mağazalardaki Uygulamalarım',
      'check_published_apps': 'Yayınlanan uygulamalarımı inceleyin',
      'google_play': 'Google Play',
      'app_store': 'App Store',

      // Contact Section
      'contact_me': 'İletişim',
      'lets_connect': 'Hadi Bağlantı Kuralım',
      'contact_description':
          'İş birliği için veya sadece merhaba demek için iletişime geçebilirsiniz',
    },
  };

  String get(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'tr'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
