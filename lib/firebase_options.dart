// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDDybZclWhqib1zvk_e1RnBNYcrGbXFp38',
    appId: '1:476291362805:web:fc75e1a44efbb71882fabc',
    messagingSenderId: '476291362805',
    projectId: 'starwars-24ca1',
    authDomain: 'starwars-24ca1.firebaseapp.com',
    storageBucket: 'starwars-24ca1.appspot.com',
    measurementId: 'G-EX5PQKH5HY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRUEaFmWg5SPVTvWbSuvTjhsyfD7hJAEs',
    appId: '1:476291362805:android:0a82d53b4419489182fabc',
    messagingSenderId: '476291362805',
    projectId: 'starwars-24ca1',
    storageBucket: 'starwars-24ca1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdvTYJA8f8mGlrgkB47uRmeUZoGuG2dUg',
    appId: '1:476291362805:ios:1cd1ddb82ae214e182fabc',
    messagingSenderId: '476291362805',
    projectId: 'starwars-24ca1',
    storageBucket: 'starwars-24ca1.appspot.com',
    iosBundleId: 'com.example.starWars',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdvTYJA8f8mGlrgkB47uRmeUZoGuG2dUg',
    appId: '1:476291362805:ios:1cd1ddb82ae214e182fabc',
    messagingSenderId: '476291362805',
    projectId: 'starwars-24ca1',
    storageBucket: 'starwars-24ca1.appspot.com',
    iosBundleId: 'com.example.starWars',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDDybZclWhqib1zvk_e1RnBNYcrGbXFp38',
    appId: '1:476291362805:web:8ba10d65cefb609282fabc',
    messagingSenderId: '476291362805',
    projectId: 'starwars-24ca1',
    authDomain: 'starwars-24ca1.firebaseapp.com',
    storageBucket: 'starwars-24ca1.appspot.com',
    measurementId: 'G-NLLY81G9NZ',
  );
}
