import 'dart:io';
import 'package:flutter/foundation.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (kDebugMode)
    {
      return 'ca-app-pub-3940256099942544/6300978111';
    }

    if (Platform.isAndroid)
    {
      return '<YOUR_ANDROID_BANNER_AD_UNIT_ID>';
    }
    else if (Platform.isIOS)
    {
      return '<YOUR_IOS_BANNER_AD_UNIT_ID>';
    }
    else
    {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get appOpenAdUnitId {
    if (kDebugMode)
    {
      return 'ca-app-pub-3940256099942544/9257395921';
    }

    if (Platform.isAndroid)
    {
      return '<YOUR_ANDROID_APP_OPEN_AD_UNIT_ID>';
    }
    else if (Platform.isIOS)
    {
      return '<YOUR_IOS_APP_OPEN_AD_UNIT_ID>';
    }
    else
    {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (kDebugMode)
    {
      return 'ca-app-pub-3940256099942544/1033173712';
    }

    if (Platform.isAndroid)
    {
      return '<YOUR_ANDROID_INTERSTITIAL_AD_UNIT_ID>';
    }
    else if (Platform.isIOS)
    {
      return '<YOUR_IOS_INTERSTITIAL_AD_UNIT_ID>';
    }
    else
    {
      throw UnsupportedError('Unsupported platform');
    }
  }
}