import 'package:biyoloji_16_03_2023/product/project_colors.dart';
import 'package:flutter/material.dart';

import '../../package/url_use.dart';
import 'ataturk.dart';

class HomeDrawerPage extends StatefulWidget {
  const HomeDrawerPage({super.key});

  @override
  State<HomeDrawerPage> createState() => _HomeDrawerPageState();
}

class _HomeDrawerPageState extends State<HomeDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Image.asset(
            "assets/gorsel/abcd.png",
            width: 150,
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text(
              'Mustafa Kemal Atatürk',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Ataturk()));
            },
          ),
          ListTile(
            title: const Text('Diğer Uygulamalar'),
            onTap: () {
              launched = launchInBrowser(appler);
            },
          ),
          ListTile(
            title: const Text('Eğitim İçerikleri Tümü -Web-'),
            onTap: () {
              launched = launchInBrowser(icerikler);
            },
          ),
          ListTile(
            title: const Text('Eğitim Kurumları -Web-'),
            onTap: () {
              launched = launchInBrowser(egitmenler);
            },
          ),
          ListTile(
            title: const Text('Instagram'),
            onTap: () {
              launched = launchInBrowser(instagram);
            },
          ),
          ListTile(
            title: const Text(
              'Biyoloji TYT AYT',
              style: TextStyle(
                color: kDeepPurple,
              ),
            ),
            onTap: () {
              launched = launchInBrowser(instagram);
            },
          ),
        ],
      ),
    );
  }
}
