// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome Back To Taafi Login Now`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back To Taafi Login Now',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message(
      'Login',
      name: 'loginButton',
      desc: '',
      args: [],
    );
  }

  /// `Save Login Information`
  String get SaveLogin {
    return Intl.message(
      'Save Login Information',
      name: 'SaveLogin',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get LosePassword {
    return Intl.message(
      'Forget Password ?',
      name: 'LosePassword',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Don't Have An Account ?`
  String get dontHaveAcc {
    return Intl.message(
      'Don\'t Have An Account ?',
      name: 'dontHaveAcc',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAcc {
    return Intl.message(
      'Create Account',
      name: 'createAcc',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `ReWrite Password`
  String get rePassword {
    return Intl.message(
      'ReWrite Password',
      name: 'rePassword',
      desc: '',
      args: [],
    );
  }

  /// `Do You Have an Account ?`
  String get HaveAcc {
    return Intl.message(
      'Do You Have an Account ?',
      name: 'HaveAcc',
      desc: '',
      args: [],
    );
  }

  /// `Personal Information`
  String get personalInfo {
    return Intl.message(
      'Personal Information',
      name: 'personalInfo',
      desc: '',
      args: [],
    );
  }

  /// `FullName`
  String get ThirdName {
    return Intl.message(
      'FullName',
      name: 'ThirdName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your FullName here`
  String get EnterTheThird {
    return Intl.message(
      'Enter Your FullName here',
      name: 'EnterTheThird',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get Phone {
    return Intl.message(
      'Phone Number',
      name: 'Phone',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Your Phone Number`
  String get EnterPhone {
    return Intl.message(
      'Please Enter Your Phone Number',
      name: 'EnterPhone',
      desc: '',
      args: [],
    );
  }

  /// `Erbil`
  String get Erbil {
    return Intl.message(
      'Erbil',
      name: 'Erbil',
      desc: '',
      args: [],
    );
  }

  /// `Babil`
  String get Babil {
    return Intl.message(
      'Babil',
      name: 'Babil',
      desc: '',
      args: [],
    );
  }

  /// `Baghdad`
  String get Baghdad {
    return Intl.message(
      'Baghdad',
      name: 'Baghdad',
      desc: '',
      args: [],
    );
  }

  /// `Basra`
  String get Basra {
    return Intl.message(
      'Basra',
      name: 'Basra',
      desc: '',
      args: [],
    );
  }

  /// `DhiQar`
  String get DhiQar {
    return Intl.message(
      'DhiQar',
      name: 'DhiQar',
      desc: '',
      args: [],
    );
  }

  /// `Duhok`
  String get Duhok {
    return Intl.message(
      'Duhok',
      name: 'Duhok',
      desc: '',
      args: [],
    );
  }

  /// `Diyala`
  String get Diyala {
    return Intl.message(
      'Diyala',
      name: 'Diyala',
      desc: '',
      args: [],
    );
  }

  /// `Halabja`
  String get Halabja {
    return Intl.message(
      'Halabja',
      name: 'Halabja',
      desc: '',
      args: [],
    );
  }

  /// `Karbala`
  String get Karbala {
    return Intl.message(
      'Karbala',
      name: 'Karbala',
      desc: '',
      args: [],
    );
  }

  /// `Kirkuk`
  String get Kirkuk {
    return Intl.message(
      'Kirkuk',
      name: 'Kirkuk',
      desc: '',
      args: [],
    );
  }

  /// `Muthanna`
  String get Muthanna {
    return Intl.message(
      'Muthanna',
      name: 'Muthanna',
      desc: '',
      args: [],
    );
  }

  /// `Maysan`
  String get Maysan {
    return Intl.message(
      'Maysan',
      name: 'Maysan',
      desc: '',
      args: [],
    );
  }

  /// `Ninawa`
  String get Nineveh {
    return Intl.message(
      'Ninawa',
      name: 'Nineveh',
      desc: '',
      args: [],
    );
  }

  /// `Najaf`
  String get Najaf {
    return Intl.message(
      'Najaf',
      name: 'Najaf',
      desc: '',
      args: [],
    );
  }

  /// `Qadisiyah`
  String get Qadisiyah {
    return Intl.message(
      'Qadisiyah',
      name: 'Qadisiyah',
      desc: '',
      args: [],
    );
  }

  /// `Salah Al-Din`
  String get Saladin {
    return Intl.message(
      'Salah Al-Din',
      name: 'Saladin',
      desc: '',
      args: [],
    );
  }

  /// `Sulaymaniyah`
  String get Sulaymaniyah {
    return Intl.message(
      'Sulaymaniyah',
      name: 'Sulaymaniyah',
      desc: '',
      args: [],
    );
  }

  /// `Wasit`
  String get Wasit {
    return Intl.message(
      'Wasit',
      name: 'Wasit',
      desc: '',
      args: [],
    );
  }

  /// `Al-Anbar`
  String get AlAnbar {
    return Intl.message(
      'Al-Anbar',
      name: 'AlAnbar',
      desc: '',
      args: [],
    );
  }

  /// `Governorate`
  String get Governorate {
    return Intl.message(
      'Governorate',
      name: 'Governorate',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get Age {
    return Intl.message(
      'Age',
      name: 'Age',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Age here`
  String get enterAge {
    return Intl.message(
      'Enter Your Age here',
      name: 'enterAge',
      desc: '',
      args: [],
    );
  }

  /// `Save Information`
  String get SaveInfo {
    return Intl.message(
      'Save Information',
      name: 'SaveInfo',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
