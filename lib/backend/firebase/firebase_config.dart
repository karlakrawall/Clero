import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAFcR1snUSU34hDYe-McFgkWGdqYhBnQAE",
            authDomain: "clero-nw3vi7.firebaseapp.com",
            projectId: "clero-nw3vi7",
            storageBucket: "clero-nw3vi7.firebasestorage.app",
            messagingSenderId: "281825943913",
            appId: "1:281825943913:web:655b319bc39796b651ddf8",
            measurementId: "G-W7DYLLYP08"));
  } else {
    await Firebase.initializeApp();
  }
}
