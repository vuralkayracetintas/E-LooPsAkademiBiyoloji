import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonu6Page extends StatefulWidget {
  const AYTKonu6Page({super.key});

  @override
  State<AYTKonu6Page> createState() => _AYTKonu6PageState();
}

class _AYTKonu6PageState extends State<AYTKonu6Page> {
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
    myAdFunction.createInterstitialAd();
    bottomBannerAd?.dispose();
    interstitialAd?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: isBottomBannerAdLoaded
            ? SizedBox(
                height: bottomBannerAd!.size.height.toDouble(),
                width: bottomBannerAd!.size.width.toDouble(),
                child: AdWidget(ad: bottomBannerAd!),
              )
            : null,
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.deepPurple),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            "E-LooPsAkademi",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay51.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay52.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay53.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay54.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay55.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay56.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay57.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay58.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay59.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay510.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay511.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay512.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay513.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay514.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay515.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay516.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay517.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay518.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay519.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay520.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay521.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay522.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay523.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu6/ay524.jpg",
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            )
          ],
        ));
  }
}
