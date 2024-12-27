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
    apiKey: 'AIzaSyBhVTZfIAXVN_CbNtajgVYlXYwQW1z8tvQ',
    appId: '1:700283996077:web:42d96f6ddf46688ee54324',
    messagingSenderId: '700283996077',
    projectId: 'nabinshrestha-f2c2d',
    authDomain: 'nabinshrestha-f2c2d.firebaseapp.com',
    storageBucket: 'nabinshrestha-f2c2d.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBS9_YixQK8JpnBTboITXdcdPOse4hSl_o',
    appId: '1:700283996077:android:b71d6a305fd8f513e54324',
    messagingSenderId: '700283996077',
    projectId: 'nabinshrestha-f2c2d',
    storageBucket: 'nabinshrestha-f2c2d.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQrYL9g8RRO1HEvqpj4Yv8l9tyhB4v8IA',
    appId: '1:700283996077:ios:3602ff4d9351a28fe54324',
    messagingSenderId: '700283996077',
    projectId: 'nabinshrestha-f2c2d',
    storageBucket: 'nabinshrestha-f2c2d.firebasestorage.app',
    iosBundleId: 'com.example.nabinshrestha',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDQrYL9g8RRO1HEvqpj4Yv8l9tyhB4v8IA',
    appId: '1:700283996077:ios:3602ff4d9351a28fe54324',
    messagingSenderId: '700283996077',
    projectId: 'nabinshrestha-f2c2d',
    storageBucket: 'nabinshrestha-f2c2d.firebasestorage.app',
    iosBundleId: 'com.example.nabinshrestha',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBhVTZfIAXVN_CbNtajgVYlXYwQW1z8tvQ',
    appId: '1:700283996077:web:ba9ee12c326744cae54324',
    messagingSenderId: '700283996077',
    projectId: 'nabinshrestha-f2c2d',
    authDomain: 'nabinshrestha-f2c2d.firebaseapp.com',
    storageBucket: 'nabinshrestha-f2c2d.firebasestorage.app',
  );
}
