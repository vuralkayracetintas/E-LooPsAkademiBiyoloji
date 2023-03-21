import 'package:biyoloji_16_03_2023/product/project_colors.dart';
import 'package:flutter/material.dart';

class HomeTabImage extends StatelessWidget {
  const HomeTabImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //var screenInfo = MediaQuery.of(context);
    //final double screenHeight = screenInfo.size.height;
    //final double screenWidth = screenInfo.size.width;
    return Stack(
      children: [
        const Align(
          alignment: Alignment.centerRight,
          child: Image(
              //height: screenHeight * 0.3,
              //width: screenWidth,
              image: AssetImage('assets/images/ogrenci1.png')),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Okul Eğitimi Odaklı ',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.w800,
                    color: kDeepPurple,
                    fontSize: 20),
              ),
              Row(
                children: [
                  Text(
                    'Video',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: kRedColor,
                        fontSize: 20),
                  ),
                  Text(
                    ' İçerik Platformu',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: kDeepPurple,
                        fontSize: 20),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 55),
              Text(
                'Dilediğin Eğitim Kurumundan \nDilediğin Eğitime Ulaş',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.w800,
                    color: kDeepPurple,
                    fontSize: 20),
              ),
              Column(
                children: const <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "#premiumhisset",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
