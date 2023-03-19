import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/digital_egitim_web.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test10_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test11_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test12_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test13_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test14_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test15_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test16_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test17_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test18_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test19_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test1_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test20_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test21_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test22_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test23_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test2_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test3_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test4_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test5_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test6_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test7_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test8_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/test_button_pages/tyt_test_button_page/TYT_test9_button.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/tgds_web.dart';
import 'package:biyoloji_16_03_2023/product/project_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TYTTestMainPage extends StatefulWidget {
  const TYTTestMainPage({super.key});

  @override
  State<TYTTestMainPage> createState() => _TYTTestMainPageState();
}

class _TYTTestMainPageState extends State<TYTTestMainPage> {
  int interstitialLoadAttempts = 1;
  bool isBottomBannerAdLoaded = false;
  BannerAd? bottomBannerAd;
  InterstitialAd? interstitialAd; //TODO this

  createBottomBannerAd() {
    bottomBannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: AdHelper.bannerAdUnitId,
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            setState(() {
              print('reklam calisiyor');
              isBottomBannerAdLoaded = true;
            });
          },
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
            print('banner reklam yuklenemedi ${error}');
          },
        ),
        request: const AdRequest());
    bottomBannerAd!.load();
  } //TODO This

  @override
  void initState() {
    super.initState();
    createBottomBannerAd();
    myAdFunction.createInterstitialAd();
    //service.connectionNotification(); //TODO
  }

  @override
  void dispose() {
    super.dispose();
    myAdFunction.createInterstitialAd();
    bottomBannerAd?.dispose();
    interstitialAd?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: isBottomBannerAdLoaded
            ? SizedBox(
                height: bottomBannerAd!.size.height.toDouble(),
                width: bottomBannerAd!.size.width.toDouble(),
                child: AdWidget(ad: bottomBannerAd!),
              )
            : null,
        appBar: AppBar(
            title: const Text(
          'E-LooPsAkademi',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        )),
        body: Stack(
          children: [
            Column(
              children: const [
                Align(
                    alignment: Alignment.centerRight,
                    child:
                        Image(image: AssetImage('assets/images/ogrenci.png'))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Image(
                        image: AssetImage("assets/images/eloopslogo.png"),
                        height: 80,
                        width: 250,
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Dilediğin Eğitim Kurumundan\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: size.width * .6,
                        child: const Text(
                          "Dilediğin Eğitime Kolayca Ulaşmana  ve Yıllık Eğitim Maliyetini %70  Oranında Düşürmene Olanak Sağlıyor",
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Biyoloji TYT Test',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const TGDSWeb(),
                      const SizedBox(height: 20),
                      const DigitalEgitimWeb(),
                      const SizedBox(height: 20),
                      const TYTTest1Button(),
                      const SizedBox(height: 20),
                      const TYTTest2Button(),
                      const SizedBox(height: 20),
                      const TYTTest3Button(),
                      const SizedBox(height: 20),
                      const TYTTest4Button(),
                      const SizedBox(height: 20),
                      const TYTTest5Button(),
                      const SizedBox(height: 20),
                      const TYTTest6Button(),
                      const SizedBox(height: 20),
                      const TYTTest7Button(),
                      const SizedBox(height: 20),
                      const TYTTest8Button(),
                      const SizedBox(height: 20),
                      const TYTTest9Button(),
                      const SizedBox(height: 20),
                      const TYTTest10Button(),
                      const SizedBox(height: 20),
                      const TYTTest11Button(),
                      const SizedBox(height: 20),
                      const TYTTest12Button(),
                      const SizedBox(height: 20),
                      const TYTTest13Button(),
                      const SizedBox(height: 20),
                      const TYTTest14Button(),
                      const SizedBox(height: 20),
                      const TYTTest15Button(),
                      const SizedBox(height: 20),
                      const TYTTest16Button(),
                      const SizedBox(height: 20),
                      const TYTTest17Button(),
                      const SizedBox(height: 20),
                      const TYTTest18Button(),
                      const SizedBox(height: 20),
                      const TYTTest19Button(),
                      const SizedBox(height: 20),
                      const TYTTest20Button(),
                      const SizedBox(height: 20),
                      const TYTTest21Button(),
                      const SizedBox(height: 20),
                      const TYTTest22Button(),
                      const SizedBox(height: 20),
                      const TYTTest23Button(),
                      const SizedBox(height: 20),
                      const SizedBox(height: 50),
                      Text('E-LooPsAkademi, öğrenciler ne isterse onu yapar.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: kDeepPurple)),
                      const SizedBox(height: 100)
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
