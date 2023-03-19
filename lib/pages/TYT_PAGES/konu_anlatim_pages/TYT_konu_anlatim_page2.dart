import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TYTKonu2Page extends StatefulWidget {
  const TYTKonu2Page({super.key});

  @override
  State<TYTKonu2Page> createState() => _TYTKonu2PageState();
}

class _TYTKonu2PageState extends State<TYTKonu2Page> {
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
                Image.asset("assets/images/tytkonu/tytkonu2/tb11.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb12.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb13.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb14.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb15.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb16.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb17.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb18.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb19.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb110.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb111.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb112.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb113.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb114.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb115.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb116.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb117.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb118.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu2/tb119.jpg"),
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
