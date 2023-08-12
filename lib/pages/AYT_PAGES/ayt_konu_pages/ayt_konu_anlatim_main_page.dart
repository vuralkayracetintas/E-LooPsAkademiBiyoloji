import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/digital_egitim_web.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button1.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button10.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button11.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button12.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button13.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button14.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button15.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button16.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button17.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button18.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button19.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button2.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button20.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button3.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button4.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button5.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button6.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button7.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button8.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/konu_anlatim_button_pages/ayt_konu_anlatim_button/AYT_konu_anlatim_button9.dart';
import 'package:biyoloji_16_03_2023/pages/buttons/tgds_web.dart';
import 'package:biyoloji_16_03_2023/product/project_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonuAnlatimMainPage extends StatefulWidget {
  const AYTKonuAnlatimMainPage({super.key});

  @override
  State<AYTKonuAnlatimMainPage> createState() => _AYTKonuAnlatimMainPageState();
}

class _AYTKonuAnlatimMainPageState extends State<AYTKonuAnlatimMainPage> {
  int interstitialLoadAttempts = 1;
  bool isBottomBannerAdLoaded = false;
  BannerAd? bottomBannerAd;
  InterstitialAd? interstitialAd;

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
            const Column(
              children: [
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
                      const SizedBox(height: 10),
                      const Image(
                        image: AssetImage("assets/images/eloopslogo.png"),
                        height: 80,
                        width: 250,
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Dilediğin Eğitim Kurumundan\n",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        width: size.width * .6,
                        child: const Text(
                          "Dilediğin Eğitime Kolayca Ulaşmana  ve Yıllık Eğitim Maliyetini %70  Oranında Düşürmene Olanak Sağlıyor",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Biyoloji AYT Konu Anlatım',
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
                      const AYTKonuAnlatimButton1(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton2(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton3(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton4(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton5(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton6(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton7(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton8(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton9(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton10(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton11(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton12(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton13(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton14(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton15(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton16(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton17(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton18(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton19(),
                      const SizedBox(height: 20),
                      const AYTKonuAnlatimButton20(),
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
