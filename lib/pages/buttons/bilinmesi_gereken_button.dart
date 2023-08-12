import 'package:flutter/material.dart';

class BilinmesiGerekenButton extends StatelessWidget {
  const BilinmesiGerekenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                spreadRadius: 0,
                color: Colors.black26,
                offset: Offset(0, 3),
                blurRadius: 7,
              ),
            ],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25),
            color: Colors.white),
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Image(
              image: AssetImage("assets/gorsel/ab.png"),
              height: 100,
              width: 150,
            ),
            Text(
              'Bilinmesi Gerekenler',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
