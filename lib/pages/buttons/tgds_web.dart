import 'package:biyoloji_16_03_2023/product/project_text.dart';
import 'package:flutter/material.dart';

import '../../package/url_use.dart';

class TGDSWeb extends StatefulWidget {
  const TGDSWeb({super.key});

  @override
  State<TGDSWeb> createState() => _TGDSWebState();
}

class _TGDSWebState extends State<TGDSWeb> {
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
                  color: Colors.black),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => setState(() {
                launched = launchInBrowser(toLaunche);
              }),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: const Color(0xFF817DC0),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF817DC0),
                        ),
                      ),
                      child: const Image(
                        image: AssetImage("assets/icons/1.png"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      onlineDenemeText,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
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
