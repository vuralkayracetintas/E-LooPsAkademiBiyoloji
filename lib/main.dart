import 'package:biyoloji_16_03_2023/package/local_notification_service.dart';
import 'package:biyoloji_16_03_2023/package/notification_service.dart';
import 'package:biyoloji_16_03_2023/product/project_colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'pages/home_pages/home_page.dart';

final service = FirebaseNotificationService();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(
      FirebaseNotificationService.backgroundMessage);
  LocalNotificationServices.initialize();
  MobileAds.instance.initialize();
  //FirebaseMessaging.instance.getInitialMessage();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biyoloji TYT AYT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            shadowColor: Colors.grey,
            iconTheme: IconThemeData(color: kDeepPurple),
            backgroundColor: Colors.white,
            elevation: 5.0,
            centerTitle: true),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
