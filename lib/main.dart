import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/views/animated/animated_splash_screen.dart';
import 'package:taafi/views/home_view.dart';
import 'package:taafi/views/info_register.dart';
import 'package:taafi/views/login_view.dart';

import 'package:taafi/views/register_view.dart';
import 'package:taafi/views/specific_view.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: "Baloo Bhaijaan 2",
        colorScheme: const ColorScheme.light(primary: kPrimaryColor),
      ),
      routes: {
        AnimatedSplashView.id: (context) => const AnimatedSplashView(),
        LoginView.id: (context) => const LoginView(),
        RegisterView.id: (context) => const RegisterView(),
        InfoRegister.id: (context) => const InfoRegister(),
        HomeView.id: (context) => const HomeView(),
       SpecificView.id : (context) => const SpecificView(),

      },
      initialRoute: AnimatedSplashView.id,
    );
  }
}
