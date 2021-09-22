import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intro_slider_example/home.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({ key }) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/logo_login.png'), 
      nextScreen: HomePage(),
      splashTransition: SplashTransition.rotationTransition,
      duration: 3000,
      backgroundColor: Colors.amber,
      );
      
    
  }
}