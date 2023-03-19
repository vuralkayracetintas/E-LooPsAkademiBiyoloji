import 'package:flutter/material.dart';
import '../../package/url_use.dart';
import '../../product/project_colors.dart';

class DigitalEgitimWeb extends StatefulWidget {
  const DigitalEgitimWeb({super.key});

  @override
  State<DigitalEgitimWeb> createState() => _DigitalEgitimWebState();
}

class _DigitalEgitimWebState extends State<DigitalEgitimWeb> {
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
              onTap: () => setState(() {
                launched = launchInBrowser(toLaunch);
              }),
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
                        image: AssetImage("assets/icons/2.png"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Dijital Eğitim Platformu\n-WEB-",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16),
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
