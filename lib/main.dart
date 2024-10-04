import 'package:flutter/material.dart';
import 'package:taafi/views/animated/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: "Baloo Bhaijaan 2",
        
      ),
      home: const AnimatedSplashView(),
    );
  }
}
