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
    apiKey: 'AIzaSyCpgWWqFbprMktXzLdR_GmNiHTzhdGYQQM',
    appId: '1:413618433373:web:87e26ad0d69d362d8e8cb4',
    messagingSenderId: '413618433373',
    projectId: 'elecapp-f2736',
    authDomain: 'elecapp-f2736.firebaseapp.com',
    databaseURL: 'https://elecapp-f2736-default-rtdb.firebaseio.com',
    storageBucket: 'elecapp-f2736.appspot.com',
    measurementId: 'G-VVBDR8KHS0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXay9hGNQRBu2WkrIx-AhwR-nlzxHzBZg',
    appId: '1:413618433373:android:d57717dbf651dd698e8cb4',
    messagingSenderId: '413618433373',
    projectId: 'elecapp-f2736',
    databaseURL: 'https://elecapp-f2736-default-rtdb.firebaseio.com',
    storageBucket: 'elecapp-f2736.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDP3oNH1Ruv-dkdnRYKL6bjIYRzVPymhOA',
    appId: '1:413618433373:ios:fabfc97eefcef1fb8e8cb4',
    messagingSenderId: '413618433373',
    projectId: 'elecapp-f2736',
    databaseURL: 'https://elecapp-f2736-default-rtdb.firebaseio.com',
    storageBucket: 'elecapp-f2736.appspot.com',
    iosBundleId: 'com.example.elecLibApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDP3oNH1Ruv-dkdnRYKL6bjIYRzVPymhOA',
    appId: '1:413618433373:ios:fabfc97eefcef1fb8e8cb4',
    messagingSenderId: '413618433373',
    projectId: 'elecapp-f2736',
    databaseURL: 'https://elecapp-f2736-default-rtdb.firebaseio.com',
    storageBucket: 'elecapp-f2736.appspot.com',
    iosBundleId: 'com.example.elecLibApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCpgWWqFbprMktXzLdR_GmNiHTzhdGYQQM',
    appId: '1:413618433373:web:95896723111d6f958e8cb4',
    messagingSenderId: '413618433373',
    projectId: 'elecapp-f2736',
    authDomain: 'elecapp-f2736.firebaseapp.com',
    databaseURL: 'https://elecapp-f2736-default-rtdb.firebaseio.com',
    storageBucket: 'elecapp-f2736.appspot.com',
    measurementId: 'G-PCHJXCZF53',
  );
}
