import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/views/login_view.dart';
import 'package:page_transition/page_transition.dart';

class AnimatedSplashView extends StatefulWidget {
  const AnimatedSplashView({super.key});
  static String id = "AnimatedSplashView";

  @override
  State<AnimatedSplashView> createState() => _AnimatedSplashViewState();
}

class _AnimatedSplashViewState extends State<AnimatedSplashView> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      curve: Curves.ease,
      duration: 3000,
      animationDuration: const Duration(milliseconds: 2000),
      splashTransition: SplashTransition.scaleTransition,
      splash: Stack(
        children: [
          Center(
            child: SizedBox(
              width: 400,
              height: 400,
              child: Center(
                  child: Image.asset(
                "assets/images/app_icon.png",
                fit: BoxFit.fill,
              )).animate().fade().scale(
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 800)),
            ),
          ),
          const Align(
            alignment: Alignment(0, 1.7),
            child: Text(
              "مرحبا بك",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ).animate().fade().scale(
              curve: Curves.ease,
              delay: const Duration(milliseconds: 300),
              duration: const Duration(milliseconds: 900)),
          const Align(
            alignment: Alignment(0, 2.1),
            child: Text(
              "في تعافي طابور مافي",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ).animate().fade().scale(
              curve: Curves.ease,
              delay: const Duration(milliseconds: 400),
              duration: const Duration(milliseconds: 900)),
        ],
      ),
      nextScreen: const LoginView(),
      backgroundColor: Colors.white,
      splashIconSize: 180,
      pageTransitionType: PageTransitionType.theme,
    );
  }
}
