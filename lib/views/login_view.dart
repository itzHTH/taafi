import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:taafi/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taafi/views/animated/animated_splash_screen.dart';
import 'package:taafi/widgets/custom_checkbox.dart';
import 'package:taafi/widgets/custome_text_form_filed.dart';

import '../generated/l10n.dart';
import '../widgets/custom_buttom.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

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
          const Positioned(
            bottom: 128,
            top: 0,
            left: 0,
            right: 0,
            child: Divider(
              height: 0.5,
              thickness: 0.5,
              color: Colors.black,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 455,
              color: Colors.white,
              child: const LoginForm(),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 38, bottom: 24),
            child: Text(
              S.of(context).welcomeBack,
              style: const TextStyle(
                color: kPrimaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomTextFormFiled(
            padding: const EdgeInsets.symmetric(vertical: 20),
            hint: S.of(context).email,
            prefixIcon: FontAwesomeIcons.envelope,
          ),
          const SizedBox(
            height: 22,
          ),
          CustomTextFormFiled(
            padding: const EdgeInsets.symmetric(vertical: 20),
            hint: S.of(context).password,
            prefixIcon: FontAwesomeIcons.userLock,
            suffixIcon: const Icon(
              FontAwesomeIcons.eye,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          CustomButton(
            text: S.of(context).loginButton,
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomCheckbox(),
                Text(
                  S.of(context).LosePassword,
                  style:
                      const TextStyle(color: Color(0xff9F9292), fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
