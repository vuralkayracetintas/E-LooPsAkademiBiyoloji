import 'package:biyoloji_16_03_2023/pages/TYT_PAGES/test_pages/TYT_test_main_page.dart';
import 'package:flutter/material.dart';

class TYTTestButton extends StatelessWidget {
  const TYTTestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //Buton :) web
      onTap: () {
        //  myAdFunction.showInterstitialAd();
        // _showInterstitialAd();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const TYTTestMainPage()));
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
        child: const Column(
          children: [
            Spacer(),
            Image(
              image: AssetImage("assets/gorsel/abcd.png"),
              height: 90,
              width: 120,
            ),
            Spacer(),
            Text(
              "TYT Test",
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
