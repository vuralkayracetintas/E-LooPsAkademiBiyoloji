import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonu9Page extends StatefulWidget {
  const AYTKonu9Page({super.key});

  @override
  State<AYTKonu9Page> createState() => _AYTKonu9PageState();
}

class _AYTKonu9PageState extends State<AYTKonu9Page> {
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
                  "assets/images/aytkonu/aytkonu9/ay81.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay82.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay83.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay84.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay85.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay86.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay87.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay88.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay89.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay810.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay811.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay812.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay813.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay814.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay815.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu9/ay816.jpg",
                ),
                const SizedBox(
                  height: 20.0,
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
