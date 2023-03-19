import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TYTKonu8Page extends StatefulWidget {
  const TYTKonu8Page({super.key});

  @override
  State<TYTKonu8Page> createState() => _TYTKonu8PageState();
}

class _TYTKonu8PageState extends State<TYTKonu8Page> {
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
                  "assets/images/tytkonu/tytkonu8/tb71.png",
                ),
                Image.asset(
                  "assets/images/tytkonu/tytkonu8/tb72.png",
                ),
                Image.asset(
                  "assets/images/tytkonu/tytkonu8/tb73.png",
                ),
                Image.asset(
                  "assets/images/tytkonu/tytkonu8/tb74.png",
                ),
                Image.asset(
                  "assets/images/tytkonu/tytkonu8/tb75.png",
                ),
                Image.asset(
                  "assets/images/tytkonu/tytkonu8/tb76.png",
                ),
                Image.asset(
                  "assets/images/tytkonu/tytkonu8/tb77.png",
                ),
                Image.asset(
                  "assets/images/tytkonu/tytkonu8/tb78.png",
                ),
                Image.asset(
                  "assets/images/tytkonu/tytkonu8/tb79.png",
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
