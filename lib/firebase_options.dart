// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDGaid8gXyEQ8-2c2lO-CpQTO5WIwDR8NU',
    appId: '1:516970475774:web:5ff714b173adb0dcd9f5af',
    messagingSenderId: '516970475774',
    projectId: 'test-admob-flutter',
    authDomain: 'test-admob-flutter.firebaseapp.com',
    storageBucket: 'test-admob-flutter.appspot.com',
    measurementId: 'G-N7JSF626ZC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAd_p-hTQ4bIbqenJo5WW_dwiHdFv3qEQg',
    appId: '1:516970475774:android:c1885940659aefdcd9f5af',
    messagingSenderId: '516970475774',
    projectId: 'test-admob-flutter',
    storageBucket: 'test-admob-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBQiIn-RFvt1RDzXWC7YbxRNTQwcUuiMA',
    appId: '1:516970475774:ios:0af10c356f214ff8d9f5af',
    messagingSenderId: '516970475774',
    projectId: 'test-admob-flutter',
    storageBucket: 'test-admob-flutter.appspot.com',
    iosBundleId: 'com.faisal.googleadmob.googleAdmobFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCBQiIn-RFvt1RDzXWC7YbxRNTQwcUuiMA',
    appId: '1:516970475774:ios:fe7485fbe4e678b7d9f5af',
    messagingSenderId: '516970475774',
    projectId: 'test-admob-flutter',
    storageBucket: 'test-admob-flutter.appspot.com',
    iosBundleId: 'com.faisal.googleadmob.googleAdmobFlutter.RunnerTests',
  );
}
