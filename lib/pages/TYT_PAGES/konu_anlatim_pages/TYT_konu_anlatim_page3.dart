import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/package/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TYTKonu3Page extends StatefulWidget {
  const TYTKonu3Page({super.key});

  @override
  State<TYTKonu3Page> createState() => _TYTKonu3PageState();
}

class _TYTKonu3PageState extends State<TYTKonu3Page> {
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
                Image.asset("assets/images/tytkonu/tytkonu3/tb21.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb22.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb23.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb24.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb25.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb26.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb27.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb28.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb29.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb210.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb211.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb212.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb213.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb214.jpg"),
                Image.asset("assets/images/tytkonu/tytkonu3/tb215.jpg"),
                const SizedBox(height: 20.0),
                const SizedBox(height: 20.0),
                const SizedBox(height: 20.0),
              ],
            )
          ],
        ));
  }
}
