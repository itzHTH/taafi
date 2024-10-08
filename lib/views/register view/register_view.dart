import 'package:flutter/material.dart';
import 'package:taafi/views/register%20view/register_form.dart';



class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static String id = "RegisterView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/doctor_register.png",
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(color: Colors.black.withOpacity(0.35)))),
              height: 480,
              width: double.infinity,
              child: const SingleChildScrollView(child: RegisterForm()),
            ),
          ),
        ],
      ),
    );
  }
}
