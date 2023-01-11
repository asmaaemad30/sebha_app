import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sebha_app/constant.dart';
import 'package:flutter/cupertino.dart';
import '../home/layoutscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:SvgPicture.asset('$imageSplash'),
      centered: true,
      backgroundColor: backgroundColor,
      splashIconSize: double.infinity,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType:PageTransitionType.fade ,
      duration: 3000,
      nextScreen:Layoutscreen(),);
  }
}
