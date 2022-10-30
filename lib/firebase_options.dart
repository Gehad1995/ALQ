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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDQ_WrY1TSRrtQ4XvRumITLxosM1YjgPXg',
    appId: '1:497430701190:android:30f099513a9bbcd67c9d07',
    messagingSenderId: '497430701190',
    projectId: 'alq-gp',
    databaseURL: 'https://alq-gp-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'alq-gp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBYx9goelJ0uelztbyj5HUCaizM1uld20c',
    appId: '1:497430701190:ios:bf94b0fc6983916f7c9d07',
    messagingSenderId: '497430701190',
    projectId: 'alq-gp',
    databaseURL: 'https://alq-gp-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'alq-gp.appspot.com',
    iosClientId: '497430701190-bok3d739semba9i75pnigooa1odq08ck.apps.googleusercontent.com',
    iosBundleId: 'com.example.alqgp',
  );
}
