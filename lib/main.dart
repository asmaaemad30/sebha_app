import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'view/screens/splash/Splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';
    void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سبح',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),

      ),
      home: Splashscreen() ,
    );
  }
}
