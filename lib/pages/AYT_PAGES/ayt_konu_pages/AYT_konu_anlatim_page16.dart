import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonu16Page extends StatefulWidget {
  const AYTKonu16Page({super.key});

  @override
  State<AYTKonu16Page> createState() => _AYTKonu16PageState();
}

class _AYTKonu16PageState extends State<AYTKonu16Page> {
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
                  "assets/images/aytkonu/aytkonu16/ay151.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay152.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay153.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay154.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay155.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay156.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay157.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay158.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay159.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay1510.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay1511.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay1512.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay1513.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay1514.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu16/ay1515.jpg",
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
