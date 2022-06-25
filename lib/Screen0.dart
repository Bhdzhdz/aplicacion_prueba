import 'package:flutter/material.dart';
import 'package:aplicacion_prueba/Screen1.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class Screen0 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return AnimatedSplashScreen(
        duration: 800,
        splash: Text('CAORINC', textScaleFactor: 5.0, style: TextStyle(color: Colors.white)),
        nextScreen: Screen1(),
        splashTransition: SplashTransition.fadeTransition,
        //pageTransitionType: PageTransitionType,
        backgroundColor: Colors.blueAccent);
  }
}