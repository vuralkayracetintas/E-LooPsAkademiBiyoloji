import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonu12Page extends StatefulWidget {
  const AYTKonu12Page({super.key});

  @override
  State<AYTKonu12Page> createState() => _AYTKonu12PageState();
}

class _AYTKonu12PageState extends State<AYTKonu12Page> {
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
                  "assets/images/aytkonu/aytkonu12/ay111.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu12/ay112.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu12/ay113.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu12/ay114.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu12/ay115.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu12/ay116.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu12/ay117.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu12/ay118.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu12/ay119.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu12/ay1110.jpg",
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
