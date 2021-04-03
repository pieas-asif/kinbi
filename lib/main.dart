import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:kinbi/screens/home.dart';
import 'package:kinbi/screens/login.dart';
import 'package:kinbi/screens/registration.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kinbi?',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: "Quicksand",
      ),
      home: AnimatedSplashScreen(
        nextScreen: LoginPage(),
        splash: "images/Kinbi.png",
        curve: Curves.fastOutSlowIn,
        duration: 1000,
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.rightToLeft,
        splashIconSize: 300,
      ),
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegistrationPage.id: (context) => RegistrationPage(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
