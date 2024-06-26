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
    apiKey: 'AIzaSyBLdHQ5hLlQS0-VY-h1pxQYHcF9EI20iEc',
    appId: '1:908543006290:web:143dc6327dfbb79903318b',
    messagingSenderId: '908543006290',
    projectId: 'movie-app-e2ddf',
    authDomain: 'movie-app-e2ddf.firebaseapp.com',
    storageBucket: 'movie-app-e2ddf.appspot.com',
    measurementId: 'G-9FJQF7JRV6',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAGcCl8CBbIA4UXjWeJv9WEvLURQNQKnFg',
    appId: '1:908543006290:ios:50ce16bad062d2ab03318b',
    messagingSenderId: '908543006290',
    projectId: 'movie-app-e2ddf',
    storageBucket: 'movie-app-e2ddf.appspot.com',
    iosBundleId: 'com.example.uiChallenges',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBLdHQ5hLlQS0-VY-h1pxQYHcF9EI20iEc',
    appId: '1:908543006290:web:3519273fb920223603318b',
    messagingSenderId: '908543006290',
    projectId: 'movie-app-e2ddf',
    authDomain: 'movie-app-e2ddf.firebaseapp.com',
    storageBucket: 'movie-app-e2ddf.appspot.com',
    measurementId: 'G-N99G4FDB9B',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAGcCl8CBbIA4UXjWeJv9WEvLURQNQKnFg',
    appId: '1:908543006290:ios:50ce16bad062d2ab03318b',
    messagingSenderId: '908543006290',
    projectId: 'movie-app-e2ddf',
    storageBucket: 'movie-app-e2ddf.appspot.com',
    iosBundleId: 'com.example.uiChallenges',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9DkfzslZfkvRf08T6yQu1D9-VYEQBpmU',
    appId: '1:908543006290:android:4a4464a63497ab8803318b',
    messagingSenderId: '908543006290',
    projectId: 'movie-app-e2ddf',
    storageBucket: 'movie-app-e2ddf.appspot.com',
  );

}