import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';
import 'package:taafi/views/info_register.dart';
import 'package:taafi/widgets/ask_row.dart';
import 'package:taafi/widgets/custom_icon.dart';
import 'package:taafi/widgets/custome_text_form_filed.dart';

import 'custom_buttom.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});
  final edgeInsets = const EdgeInsets.symmetric(vertical: 12);
  final sizedBox = const SizedBox(
    height: 14,
  );
  final double radius = 20;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 38, bottom: 24),
            child: Text(
              S.of(context).createAcc,
              style: const TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
          CustomTextFormFiled(
              radius: radius,
              hint: S.of(context).username,
              prefixIcon: const Padding(
                padding: EdgeInsets.all(12.0),
                child: CustomIcon(
                  color: kPrimaryColor,
                  icon: "user-profile",
                  size: 20,
                ),
              ),
              padding: edgeInsets),
          sizedBox,
          CustomTextFormFiled(
              radius: radius,
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
              padding: edgeInsets),
          sizedBox,
          CustomTextFormFiled(
              radius: radius,
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
              padding: edgeInsets),
          sizedBox,
          CustomTextFormFiled(
              radius: radius,
              hint: S.of(context).rePassword,
              prefixIcon: const Padding(
                padding: EdgeInsets.all(12.0),
                child: CustomIcon(
                  color: kPrimaryColor,
                  icon: "password",
                  size: 20,
                ),
              ),
              padding: edgeInsets),
          const SizedBox(
            height: 35,
          ),
          CustomButton(
            height: 60,
            text: S.of(context).createAcc,
            onTap: () {
              Navigator.pushNamed(context, InfoRegister.id);
            },
          ),
          const SizedBox(
            height: 25,
          ),
          AskRow(
            fText: S.of(context).HaveAcc,
            sText: S.of(context).loginButton,
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
