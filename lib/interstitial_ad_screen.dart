import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ads_helper/ads_helper.dart';

class InterstitialAdScreen extends StatefulWidget {
  const InterstitialAdScreen({super.key});

  @override
  State<InterstitialAdScreen> createState() => _InterstitialAdScreenState();
}

class _InterstitialAdScreenState extends State<InterstitialAdScreen> {
  InterstitialAd? _interstitialAd;

  @override
  void initState() {
    super.initState();
    loadInterstitialAd();
  }
  // endregion

  void loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          debugPrint("loadInterstitialAd onAdLoaded: Add Loaded Successfully!");
          setState(() {
            _interstitialAd = ad;
          });
          showInterstitialAd();
        },
        onAdFailedToLoad: (LoadAdError error) {
          debugPrint("loadInterstitialAd onAdFailedToLoad: Error ${error.message}");
        },
      ),
    );
  }

  void showInterstitialAd() {
    if (_interstitialAd != null)
    {
      _interstitialAd?.fullScreenContentCallback = FullScreenContentCallback(
        onAdShowedFullScreenContent: (InterstitialAd ad) {
          debugPrint("showInterstitialAd onAdShowedFullScreenContent: Add Content Showed Successfully!");
        },
        onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
          debugPrint("showInterstitialAd onAdFailedToShowFullScreenContent: Add Content Failed to Show ${error.message}!");
          setState(() {
            ad.dispose();
            _interstitialAd = null;
          });
        },
        onAdDismissedFullScreenContent: (InterstitialAd ad) {
          debugPrint("showInterstitialAd onAdDismissedFullScreenContent: Add Dismissed Successfully!");
          ad.dispose();
        },
        onAdClicked: (InterstitialAd ad) {
          debugPrint("showInterstitialAd onAdClicked: Add Clicked Successfully!");
        },
        onAdImpression: (InterstitialAd ad) {
          debugPrint("showInterstitialAd onAdImpression:");
        },
        onAdWillDismissFullScreenContent: (InterstitialAd ad) {
          debugPrint("showInterstitialAd onAdWillDismissFullScreenContent:");
        }
      );
      _interstitialAd?.show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  void dispose() {
    _interstitialAd?.dispose();
    super.dispose();
  }
}
