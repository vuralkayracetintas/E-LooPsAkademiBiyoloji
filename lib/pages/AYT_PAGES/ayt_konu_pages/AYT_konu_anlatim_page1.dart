import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonu1Page extends StatefulWidget {
  const AYTKonu1Page({super.key});

  @override
  State<AYTKonu1Page> createState() => _AYTKonu1PageState();
}

class _AYTKonu1PageState extends State<AYTKonu1Page> {
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
                  "assets/images/aytkonu/aytkonu1/ay1.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay2.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay3.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay4.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay5.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay6.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay7.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay8.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay9.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay10.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay11.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay12.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay13.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay14.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay15.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay16.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay17.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay18.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay19.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu1/ay20.jpg",
                ),
              ],
            )
          ],
        ));
  }
}
