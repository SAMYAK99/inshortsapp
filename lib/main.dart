import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inshortsapp/views/splashscreen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey, // navigation bar color
      statusBarColor: Colors.redAccent)); // status bar color
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
