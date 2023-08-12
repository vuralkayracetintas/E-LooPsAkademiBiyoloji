import 'package:biyoloji_16_03_2023/pages/TYT_PAGES/konu_anlatim_pages/TYT_konu_anlatim_main_page.dart';
import 'package:flutter/material.dart';

class TYTKonuAnlatimButton extends StatefulWidget {
  const TYTKonuAnlatimButton({super.key});

  @override
  State<TYTKonuAnlatimButton> createState() => _TYTKonuAnlatimButtonState();
}

class _TYTKonuAnlatimButtonState extends State<TYTKonuAnlatimButton> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //Buton :) web
      onTap: () {
        //myAdFunction.showInterstitialAd();

        //_showInterstitialAd();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const KonuAnlatimMainPage()));
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Image(
              image: AssetImage("assets/gorsel/ab.png"),
              height: 90,
              width: 120,
            ),
            Text(
              "TYT Konu Anlatım",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
          ],
        ),
      ),
    );
  }
}
