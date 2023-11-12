import 'package:camnes/shared/role.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
//import 'package:page_transition/page_transition.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2000,
      splash: 'assets/images/logo.png',
      nextScreen: const Role(),
      splashTransition: SplashTransition.scaleTransition,
     // pageTransitionType: PageTransitionType.scale,
      backgroundColor: Colors.white,
      );
  }

  
}
