import 'package:flutter/material.dart';
import 'package:real_time_app/pages/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:real_time_app/pages/home.dart';
import 'package:real_time_app/pages/choose_location.dart';
import 'package:real_time_app/pages/inbox.dart';
import 'package:real_time_app/pages/requests.dart';
import 'package:real_time_app/pages/explore.dart';
import 'package:real_time_app/pages/services.dart';
import 'package:real_time_app/pages/profile.dart';
import 'package:real_time_app/pages/auth/login.dart';
import 'package:real_time_app/pages/auth/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Main());
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          // return (Print("Something went wrong"));
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            // initialRoute: '/home',
            routes: {
              '/': (context) => Splash(),
              '/home': (context) => Home(),
              '/location': (context) => ChooseLocation(),

              // Bottom Navigation
              '/inbox': (context) => Inbox(),
              '/requests': (context) => Requests(),
              '/explore': (context) => Explore(),
              '/services': (context) => Services(),
              '/profile': (context) => Profile(),

              // Authentication
              '/login': (context) => Login(),
              '/signup': (context) => Signup(),

              //General Route
              // '/setNewPassword': (context) => SetNewPassword(),
            },
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Splash();
      },
    );
  }
}
