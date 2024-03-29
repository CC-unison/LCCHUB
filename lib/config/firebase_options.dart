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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAnnp_BqHnvYzYMVMtgVXhQ8xtoBEOL-5A',
    appId: '1:642738705273:web:0e33019d7bb645af4e15a8',
    messagingSenderId: '642738705273',
    projectId: 'lcc-hub',
    authDomain: 'lcc-hub.firebaseapp.com',
    databaseURL: 'https://lcc-hub-default-rtdb.firebaseio.com',
    storageBucket: 'lcc-hub.appspot.com',
    measurementId: 'G-RS1L8XQHKF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBT-wyZWs7f0UTc69grglSlAwp4PTfyoOo',
    appId: '1:642738705273:android:c47c9d1a52fcc0534e15a8',
    messagingSenderId: '642738705273',
    projectId: 'lcc-hub',
    databaseURL: 'https://lcc-hub-default-rtdb.firebaseio.com',
    storageBucket: 'lcc-hub.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsYlFYrjC1fTlx2d5c6b96HN6dlCixs0g',
    appId: '1:642738705273:ios:f4da271eea8e1ccb4e15a8',
    messagingSenderId: '642738705273',
    projectId: 'lcc-hub',
    databaseURL: 'https://lcc-hub-default-rtdb.firebaseio.com',
    storageBucket: 'lcc-hub.appspot.com',
    iosClientId: '642738705273-fh54rlmc708nhe6njouftplg23166ffi.apps.googleusercontent.com',
    iosBundleId: 'com.unison.lcchub',
  );
}
