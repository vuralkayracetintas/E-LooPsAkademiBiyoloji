import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AYTKonu19Page extends StatefulWidget {
  const AYTKonu19Page({super.key});

  @override
  State<AYTKonu19Page> createState() => _AYTKonu19PageState();
}

class _AYTKonu19PageState extends State<AYTKonu19Page> {
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
                  "assets/images/aytkonu/aytkonu18/ay1725.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1726.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1727.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1728.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1729.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1730.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1731.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1732.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1733.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1734.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1735.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1736.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1737.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1738.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1739.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1740.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1741.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1742.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1743.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1744.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1745.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1746.jpg",
                  height: 780,
                  width: 750,
                ),
                Image.asset(
                  "assets/images/aytkonu/aytkonu18/ay1747.jpg",
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
