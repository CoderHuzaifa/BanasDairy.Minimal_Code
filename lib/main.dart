import 'package:banas_dairy/Screens/splashScreen.dart';
import 'package:banas_dairy/screens/LocaleString.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    translations: LocaleString(),
    theme: ThemeData(textTheme: GoogleFonts.robotoSlabTextTheme()),
    locale: Locale('en', 'US'),
    title: "Banas App",
    home: SplashScreen(),
  ));
}
