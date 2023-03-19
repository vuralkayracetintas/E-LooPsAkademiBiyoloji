import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonu5Page extends StatefulWidget {
  const AYTKonu5Page({super.key});

  @override
  State<AYTKonu5Page> createState() => _AYTKonu5PageState();
}

class _AYTKonu5PageState extends State<AYTKonu5Page> {
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
                  "assets/images/aytkonu/aytkonu5/ay41.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay42.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay43.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay44.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay45.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay46.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay47.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay48.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay49.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay410.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay411.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay412.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay413.png",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu5/ay414.png",
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
