import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBcKMO5z0pRMfEclajie0GVOy4MlA9xg78",
            authDomain: "quizapp-8c509.firebaseapp.com",
            projectId: "quizapp-8c509",
            storageBucket: "quizapp-8c509.appspot.com",
            messagingSenderId: "435223414452",
            appId: "1:435223414452:web:16ad95295c55cab08c39e1"));
  } else {
    await Firebase.initializeApp();
  }
}
