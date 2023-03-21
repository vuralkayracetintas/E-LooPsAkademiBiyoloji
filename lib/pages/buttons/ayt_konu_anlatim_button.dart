import 'package:biyoloji_16_03_2023/package/ad_function.dart';
import 'package:biyoloji_16_03_2023/pages/AYT_PAGES/ayt_konu_pages/ayt_konu_anlatim_main_page.dart';
import 'package:flutter/material.dart';

class AYTKonuAnlatimButton extends StatelessWidget {
  const AYTKonuAnlatimButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //Buton :) web
      onTap: () {
        //  myAdFunction.showInterstitialAd();
        // _showInterstitialAd();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const AYTKonuAnlatimMainPage()));
      },

      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        margin: const EdgeInsets.all(8),
        child: Column(
          children: const [
            Spacer(),
            Image(
              image: AssetImage("assets/gorsel/abcdea.png"),
              height: 90,
              width: 120,
            ),
            Spacer(),
            Text(
              "AYT Konu Anlatım",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
