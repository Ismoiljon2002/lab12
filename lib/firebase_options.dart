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
    apiKey: 'AIzaSyAzkqOEx7sh6P3DOCpfhNuPkwNWgPblNqU',
    appId: '1:470437720436:web:33078a00cf61968c367c21',
    messagingSenderId: '470437720436',
    projectId: 'lab-12-b27bb',
    authDomain: 'lab-12-b27bb.firebaseapp.com',
    storageBucket: 'lab-12-b27bb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyADA0S0924k69yWTEfaJjuPkczTizQhuXM',
    appId: '1:470437720436:android:fbc5649162bbca60367c21',
    messagingSenderId: '470437720436',
    projectId: 'lab-12-b27bb',
    storageBucket: 'lab-12-b27bb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzDhQfQullIKX3_mpQclpD_EPTDSEHtTo',
    appId: '1:470437720436:ios:cce4aec4277658bf367c21',
    messagingSenderId: '470437720436',
    projectId: 'lab-12-b27bb',
    storageBucket: 'lab-12-b27bb.appspot.com',
    iosBundleId: 'com.example.lab12',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzDhQfQullIKX3_mpQclpD_EPTDSEHtTo',
    appId: '1:470437720436:ios:07a95fdd4c218336367c21',
    messagingSenderId: '470437720436',
    projectId: 'lab-12-b27bb',
    storageBucket: 'lab-12-b27bb.appspot.com',
    iosBundleId: 'com.example.lab12.RunnerTests',
  );
}
