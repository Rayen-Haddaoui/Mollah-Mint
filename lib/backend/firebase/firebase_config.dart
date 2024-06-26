import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA8X5NJ1CYzqP9KvBLzy6IK3vR0-uFtUV8",
            authDomain: "moollahmint.firebaseapp.com",
            projectId: "moollahmint",
            storageBucket: "moollahmint.appspot.com",
            messagingSenderId: "1007509898520",
            appId: "1:1007509898520:web:88192c9b1cdb888edd8a6d",
            measurementId: "G-ZWWKK503S0"));
  } else {
    await Firebase.initializeApp();
  }
}
