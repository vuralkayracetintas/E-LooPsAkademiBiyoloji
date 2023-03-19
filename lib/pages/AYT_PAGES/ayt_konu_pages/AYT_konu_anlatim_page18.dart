import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonu18Page extends StatefulWidget {
  const AYTKonu18Page({super.key});

  @override
  State<AYTKonu18Page> createState() => _AYTKonu18PageState();
}

class _AYTKonu18PageState extends State<AYTKonu18Page> {
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
                  "assets/images/aytkonu/aytkonu18/ay171.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay172.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay173.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay174.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay175.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay176.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay177.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay178.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay179.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1710.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1711.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1712.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1713.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1714.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1715.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1716.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1717.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1718.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1719.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1720.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1721.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1722.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1723.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1724.jpg",
                  height: 780,
                  width: 750,
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
