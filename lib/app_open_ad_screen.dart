import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ads_helper/ads_helper.dart';

class AppOpenAdScreen extends StatefulWidget {
  const AppOpenAdScreen({super.key});

  @override
  State<AppOpenAdScreen> createState() => _AppOpenAdScreenState();
}

class _AppOpenAdScreenState extends State<AppOpenAdScreen> {
  AppOpenAd? _appOpenAd;

  @override
  void initState() {
    super.initState();
    loadAppOpenAd();
  }
  // endregion

  void loadAppOpenAd() {
    AppOpenAd.load(
      adUnitId: AdHelper.appOpenAdUnitId,
      orientation: AppOpenAd.orientationPortrait,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          debugPrint("loadAppOpenAd onAdLoaded: Add Loaded Successfully!");
          setState(() {
            _appOpenAd = ad;
          });
          showAppOpenAd();
        },
        onAdFailedToLoad: (LoadAdError error) {
          debugPrint("loadInterstitialAd onAdFailedToLoad: Error ${error.message}");
        },
      ),
    );
  }

  void showAppOpenAd() {
    if (_appOpenAd != null)
    {
      _appOpenAd?.fullScreenContentCallback = FullScreenContentCallback(
          onAdShowedFullScreenContent: (AppOpenAd ad) {
            debugPrint("showAppOpenAd onAdShowedFullScreenContent: Add Content Showed Successfully!");
          },
          onAdFailedToShowFullScreenContent: (AppOpenAd ad, AdError error) {
            debugPrint("showAppOpenAd onAdFailedToShowFullScreenContent: Add Content Failed to Show ${error.message}!");
            setState(() {
              ad.dispose();
              _appOpenAd = null;
            });
          },
          onAdDismissedFullScreenContent: (AppOpenAd ad) {
            debugPrint("showAppOpenAd onAdDismissedFullScreenContent: Add Dismissed Successfully!");
            ad.dispose();
          },
          onAdClicked: (AppOpenAd ad) {
            debugPrint("showAppOpenAd onAdClicked: Add Clicked Successfully!");
          },
          onAdImpression: (AppOpenAd ad) {
            debugPrint("showAppOpenAd onAdImpression:");
          },
          onAdWillDismissFullScreenContent: (AppOpenAd ad) {
            debugPrint("showAppOpenAd onAdWillDismissFullScreenContent:");
          }
      );
      _appOpenAd?.show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  void dispose() {
    _appOpenAd?.dispose();
    super.dispose();
  }
}
