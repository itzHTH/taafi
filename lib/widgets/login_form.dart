import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';
import 'package:taafi/views/home_view.dart';
import 'package:taafi/views/register_view.dart';
import 'package:taafi/widgets/ask_row.dart';
import 'package:taafi/widgets/custom_buttom.dart';
import 'package:taafi/widgets/custom_checkbox.dart';
import 'package:taafi/widgets/custom_icon.dart';

import 'custome_text_form_filed.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});
  final double radius = 20;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
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
              radius: radius,
              padding: const EdgeInsets.symmetric(vertical: 20),
              hint: S.of(context).email,
              keyboardType: TextInputType.emailAddress,
              prefixIcon: const Padding(
                padding: EdgeInsets.all(10.0),
                child: CustomIcon(
                  color: kPrimaryColor,
                  icon: "email",
                  size: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            CustomTextFormFiled(
              radius: radius,
              padding: const EdgeInsets.symmetric(vertical: 20),
              hint: S.of(context).password,
              prefixIcon: const Padding(
                padding: EdgeInsets.all(12.0),
                child: CustomIcon(
                  color: kPrimaryColor,
                  icon: "password",
                  size: 20,
                ),
              ),
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
              onTap: () => Navigator.pushReplacementNamed(context, HomeView.id),
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
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(
                color: Colors.black.withOpacity(0.35),
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                S.of(context).or,
                style: const TextStyle(color: Color(0xff9F9292)),
              ),
            ),
            Expanded(
                child: Divider(
              color: Colors.black.withOpacity(0.35),
              thickness: 1,
            ))
          ],
        ),
      ),
      const SizedBox(
        height: 6,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/VectorAp.png",
            height: 20,
          ),
          const SizedBox(
            width: 12,
          ),
          Image.asset(
            "assets/images/VectorGo.png",
            height: 20,
          ),
        ],
      ),
      const SizedBox(
        height: 22,
      ),
      AskRow(
        fText: S.of(context).dontHaveAcc,
        sText: S.of(context).createAcc,
        onTap: () => Navigator.pushNamed(context, RegisterView.id),
      )
    ]);
  }
}
