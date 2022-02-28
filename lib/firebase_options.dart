// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB1yjhKY4_CoVLPurBQ78ZR8MIJJe3BhIY',
    appId: '1:803137790063:web:b32433b06692f6053d2d9a',
    messagingSenderId: '803137790063',
    projectId: 'fir-test-2c661',
    authDomain: 'fir-test-2c661.firebaseapp.com',
    databaseURL: 'https://fir-test-2c661-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fir-test-2c661.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA22wO2xTFL0PaWXvhTAPc2qVtGd1H_wYQ',
    appId: '1:803137790063:android:2c170a2ef1dc9a4b3d2d9a',
    messagingSenderId: '803137790063',
    projectId: 'fir-test-2c661',
    databaseURL: 'https://fir-test-2c661-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'fir-test-2c661.appspot.com',
  );
}