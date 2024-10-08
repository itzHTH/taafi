import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taafi/constants.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key,
      required this.hint,
      required this.prefixIcon,
      this.suffixIcon,
      required this.padding});
  final String hint;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: padding,
          isDense: true,
          isCollapsed: true,
          filled: true,
          fillColor: const Color(0xfff1f1f1),
          enabledBorder: textFiledBorder(),
          focusedBorder: textFiledBorder(),
          prefixIcon: Icon(
            prefixIcon,
            color: kPrimaryColor,
          ),
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle: TextStyle(
              color: kPrimaryColor.withOpacity(0.73),
              fontWeight: FontWeight.w300)),
    );
  }
}

InputBorder textFiledBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(
        color: kPrimaryColor,
      ),
      borderRadius: BorderRadius.circular(20));
}
