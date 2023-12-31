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
    apiKey: 'AIzaSyAOdpCgeq410frABf9XQ0cxo-mlv4cwTPc',
    appId: '1:157551071996:web:7965ebddebe93787873d79',
    messagingSenderId: '157551071996',
    projectId: 'init-my-app',
    authDomain: 'init-my-app.firebaseapp.com',
    storageBucket: 'init-my-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD-tPzf-_J4xXTvMVQwrtL1dYgvGouZ21k',
    appId: '1:157551071996:android:93e8d5bf82092fe4873d79',
    messagingSenderId: '157551071996',
    projectId: 'init-my-app',
    storageBucket: 'init-my-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBa9Fr5bnjMUt2QXzDjBiLWERL7cdb0V5s',
    appId: '1:157551071996:ios:59d2a26509f3157b873d79',
    messagingSenderId: '157551071996',
    projectId: 'init-my-app',
    storageBucket: 'init-my-app.appspot.com',
    iosBundleId: 'com.example.initial',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBa9Fr5bnjMUt2QXzDjBiLWERL7cdb0V5s',
    appId: '1:157551071996:ios:c8cd01542850d18a873d79',
    messagingSenderId: '157551071996',
    projectId: 'init-my-app',
    storageBucket: 'init-my-app.appspot.com',
    iosBundleId: 'com.example.initial.RunnerTests',
  );
}
