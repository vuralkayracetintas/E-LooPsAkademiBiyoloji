import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2445169075279341/3779906560';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-2445169075279341/9764470184';
      //'ca-app-pub-2445169075279341/9764470184';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-2445169075279341/5593156465";
    } else if (Platform.isIOS) {
      return 'ca-app-pub-2445169075279341/9298616077'; // 'ca-app-pub-2445169075279341/9298616077';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
