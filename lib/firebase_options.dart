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
    apiKey: 'AIzaSyCcv6t-CQhUmieA5XNKKn9T9DvVyTvQ-lw',
    appId: '1:534749410325:web:cc608c54dc8cc18b394a1c',
    messagingSenderId: '534749410325',
    projectId: 'yourschef-9398f',
    authDomain: 'yourschef-9398f.firebaseapp.com',
    storageBucket: 'yourschef-9398f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBYLpxvrdeJ5BT1kMiH5z4vdZ5MPtMJ4gs',
    appId: '1:534749410325:android:c953bd2e512dc14e394a1c',
    messagingSenderId: '534749410325',
    projectId: 'yourschef-9398f',
    storageBucket: 'yourschef-9398f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCslOHRFZc1daXkACKrSH-cAe6ePpW2JXg',
    appId: '1:534749410325:ios:b252429873f4d080394a1c',
    messagingSenderId: '534749410325',
    projectId: 'yourschef-9398f',
    storageBucket: 'yourschef-9398f.appspot.com',
    iosBundleId: 'com.example.yourschef',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCslOHRFZc1daXkACKrSH-cAe6ePpW2JXg',
    appId: '1:534749410325:ios:4b8553332a7c3f80394a1c',
    messagingSenderId: '534749410325',
    projectId: 'yourschef-9398f',
    storageBucket: 'yourschef-9398f.appspot.com',
    iosBundleId: 'com.example.yourschef.RunnerTests',
  );
}
