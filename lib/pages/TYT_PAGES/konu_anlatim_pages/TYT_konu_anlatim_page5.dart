import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TYTKonu5Page extends StatefulWidget {
  const TYTKonu5Page({super.key});

  @override
  State<TYTKonu5Page> createState() => _TYTKonu5PageState();
}

class _TYTKonu5PageState extends State<TYTKonu5Page> {
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
                Image.asset("assets/images/tytkonu/tytkonu5/tb41.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb42.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb43.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb44.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb45.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb46.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb47.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb48.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb49.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb410.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb411.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb412.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb413.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb414.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb415.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb416.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb417.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb418.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb419.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb420.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb421.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb422.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu5/tb423.jpg"),
                const SizedBox(height: 20.0),
                const SizedBox(height: 20.0),
              ],
            )
          ],
        ));
  }
}
