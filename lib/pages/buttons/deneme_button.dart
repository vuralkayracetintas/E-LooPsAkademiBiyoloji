import 'package:flutter/material.dart';

import '../../package/url_use.dart';

class DenemeButton extends StatelessWidget {
  const DenemeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launched = launchInBrowser(toLaunche);
      },
      child: Container(
        alignment: Alignment.center,
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 0,
                offset: Offset(0, 3),
                blurRadius: 7,
              ),
            ],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25),
            color: Colors.white),
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Image(
              image: AssetImage("assets/gorsel/abc.png"),
              height: 100,
              width: 150,
            ),
            Text(
              'Online TYT-AYT Denemeler',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
