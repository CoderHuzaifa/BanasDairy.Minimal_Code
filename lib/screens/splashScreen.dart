import 'dart:async';

import 'package:banas_dairy/Screens/selectLanguage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => SelectLanguage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(182, 240, 255, 7),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
            ),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
          ],
        ),
        bottomSheet: SizedBox(
          width: double.infinity,
          child: Image.asset(
            "assets/images/splash.png",
            fit: BoxFit.fill,
          ),
        ));
  }
}
