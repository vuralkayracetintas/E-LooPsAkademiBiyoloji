import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonu2Page extends StatefulWidget {
  const AYTKonu2Page({super.key});

  @override
  State<AYTKonu2Page> createState() => _AYTKonu2PageState();
}

class _AYTKonu2PageState extends State<AYTKonu2Page> {
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
                  "assets/images/aytkonu/aytkonu2/ay11.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu2/ay12.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu2/ay13.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu2/ay14.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu2/ay15.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu2/ay16.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu2/ay17.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu2/ay18.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu2/ay19.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu2/ay110.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu2/ay111.jpg",
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
