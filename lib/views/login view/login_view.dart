import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taafi/views/login%20view/login_form.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = "LoginView";
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/doctor_login.jpg",
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(color: Colors.black.withOpacity(0.35)))),
              height: 480,
              child: const SingleChildScrollView(child: LoginForm()),
            ),
          ),
        ],
      ),
    );
  }
}
