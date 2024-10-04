import 'package:flutter/material.dart';
import 'package:taafi/views/animated/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedSplashScreen(),
    );
  }
}
