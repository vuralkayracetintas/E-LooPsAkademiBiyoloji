import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonu4Page extends StatefulWidget {
  const AYTKonu4Page({super.key});

  @override
  State<AYTKonu4Page> createState() => _AYTKonu4PageState();
}

class _AYTKonu4PageState extends State<AYTKonu4Page> {
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
                  "assets/images/aytkonu/aytkonu4/ay31.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay32.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay33.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay34.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay35.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay36.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay37.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay38.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay39.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay310.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay311.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay312.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay313.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay314.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay315.jpg",
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu4/ay316.jpg",
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
