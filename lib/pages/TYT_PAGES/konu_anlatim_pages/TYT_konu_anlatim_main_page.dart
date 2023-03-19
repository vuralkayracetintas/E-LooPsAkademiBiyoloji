import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../../../product/project_colors.dart';
import '../../buttons/digital_egitim_web.dart';
import '../../buttons/konu_anlatim_button_pages/TYT_konu_anlatim_button1.dart';
import '../../buttons/konu_anlatim_button_pages/TYT_konu_anlatim_button10.dart';
import '../../buttons/konu_anlatim_button_pages/TYT_konu_anlatim_button2.dart';
import '../../buttons/konu_anlatim_button_pages/TYT_konu_anlatim_button3.dart';
import '../../buttons/konu_anlatim_button_pages/TYT_konu_anlatim_button4.dart';
import '../../buttons/konu_anlatim_button_pages/TYT_konu_anlatim_button5.dart';
import '../../buttons/konu_anlatim_button_pages/TYT_konu_anlatim_button6.dart';
import '../../buttons/konu_anlatim_button_pages/TYT_konu_anlatim_button7.dart';
import '../../buttons/konu_anlatim_button_pages/TYT_konu_anlatim_button8.dart';
import '../../buttons/konu_anlatim_button_pages/TYT_konu_anlatim_button9.dart';

import '../../buttons/tgds_web.dart';

class KonuAnlatimMainPage extends StatefulWidget {
  const KonuAnlatimMainPage({super.key});

  @override
  State<KonuAnlatimMainPage> createState() => _KonuAnlatimMainPageState();
}

class _KonuAnlatimMainPageState extends State<KonuAnlatimMainPage> {
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
              print('TYT konu anlatim reklam calisiyor');
              isBottomBannerAdLoaded = true;
            });
          },
          onAdFailedToLoad: (ad, error) {
            ad.dispose();
            print('TYT konu anlatim banner reklam yuklenemedi ${error}');
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
                      SizedBox(height: 10),
                      const Image(
                        image: AssetImage("assets/images/eloopslogo.png"),
                        height: 80,
                        width: 250,
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Dilediğin Eğitim Kurumundan\n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
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
                        'Biyoloji TYT Konu Anlatım',
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
                      const TYTKonuAnlatimButton1(),
                      const SizedBox(height: 20),
                      const TYTKonuAnlatimButton2(),
                      const SizedBox(height: 20),
                      const TYTKonuAnlatimButton3(),
                      const SizedBox(height: 20),
                      const TYTKonuAnlatimButton4(),
                      const SizedBox(height: 20),
                      const TYTKonuAnlatimButton5(),
                      const SizedBox(height: 20),
                      const TYTKonuAnlatimButton6(),
                      const SizedBox(height: 20),
                      const TYTKonuAnlatimButton7(),
                      const SizedBox(height: 20),
                      const TYTKonuAnlatimButton8(),
                      const SizedBox(height: 20),
                      const TYTKonuAnlatimButton9(),
                      const SizedBox(height: 20),
                      const TYTKonuAnlatimButton10(),
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
