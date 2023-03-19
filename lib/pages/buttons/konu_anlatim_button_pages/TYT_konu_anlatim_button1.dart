import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/pages/TYT_PAGES/konu_anlatim_pages/TYT_konu_anlatim_page1.dart';
import 'package:biyoloji_16_03_2023/product/project_colors.dart';
import 'package:flutter/material.dart';

class TYTKonuAnlatimButton1 extends StatefulWidget {
  const TYTKonuAnlatimButton1({super.key});

  @override
  State<TYTKonuAnlatimButton1> createState() => _TYTKonuAnlatimButton1State();
}

class _TYTKonuAnlatimButton1State extends State<TYTKonuAnlatimButton1> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 - 25,
          // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                // if (myAdFunction.showInterstitialAd != null) {
                //   myAdFunction.showInterstitialAd();
                // } else {}
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TYTKonu1Page()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,

                      width: 43,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: const Image(
                          image: AssetImage(
                        "assets/icons/3.png",
                      )),

                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Canlıların Ortak \nÖzellikleri",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
