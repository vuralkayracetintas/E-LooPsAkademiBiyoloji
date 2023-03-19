import 'package:flutter/material.dart';

import '../../package/url_use.dart';

class DigitalPlatformButton extends StatelessWidget {
  const DigitalPlatformButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launched = launchInBrowser(toLaunch);
      },
      child: Container(
        width: 200,
        height: 200,
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
            color: Colors.white),
        margin: const EdgeInsets.all(8),
        child: Column(
          children: const [
            Spacer(),
            Image(
              image: AssetImage("assets/gorsel/a.png"),
              height: 100,
              width: 150,
            ),
            Spacer(),
            Text(
              "Dijital Platform\n- WEB -",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
              textAlign: TextAlign.center,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
