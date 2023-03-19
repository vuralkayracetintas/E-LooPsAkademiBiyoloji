import 'package:url_launcher/url_launcher.dart';

Future<void> launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw 'Sanırım Arızalı $url';
  }
}

var launched;
final Uri toLaunch =
    Uri(scheme: 'https', host: 'www.eloopsakademi.com', path: '');

final Uri toLaunche = Uri(
    scheme: 'https',
    host: 'www.eloopsakademi.com',
    path: '/course-category/denemeler/');

final Uri egitmenler =
    Uri(scheme: 'https', host: 'www.eloopsakademi.com', path: '/egitmenler/');

// final Uri magaza =
//     Uri(scheme: 'https', host: 'www.loryen.com', path: '/43-e-loops-akademi/');

final Uri icerikler =
    Uri(scheme: 'https', host: 'www.eloopsakademi.com', path: '/kurslar/');

final Uri appler =
    Uri(scheme: 'https', host: 'www.eloopsakademi.com', path: '/katalog/');

final Uri bizidavet = Uri(
    scheme: 'https', host: 'www.eloopsakademi.com', path: '/cagirin-gelelim/');

final Uri iletisim =
    Uri(scheme: 'https', host: 'www.eloopsakademi.com', path: '/iletisim/');

final Uri dc =
    Uri(scheme: 'https', host: 'www.discord.com', path: '/invite/wfQUAJVfV5/');

final Uri instagram =
    Uri(scheme: 'https', host: 'www.instagram.com', path: '/eloopsakademi/');
