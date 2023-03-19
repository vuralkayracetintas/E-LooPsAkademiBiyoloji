import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/pages/AYT_PAGES/ayt_konu_pages/AYT_konu_anlatim_page2.dart';
import 'package:biyoloji_16_03_2023/product/project_colors.dart';
import 'package:flutter/material.dart';

class AYTKonuAnlatimButton2 extends StatelessWidget {
  const AYTKonuAnlatimButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          width: constraint.maxWidth / 1 -
              25, // constraint.maxWidth provide us the available with for this widget
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
                //_showInterstitialAd();
                myAdFunction.showInterstitialAd();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AYTKonu2Page()));
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
                        image: AssetImage("assets/icons/1.png"),
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/search.svg",
                      // ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "Endokrin Sistemi",
                      style: Theme.of(context).textTheme.subtitle1,
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
