import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taafi/constants.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key,
      required this.hint,
      this.prefixIcon,
      this.suffixIcon,
      required this.padding,
      this.keyboardType, required this.radius});
  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry padding;
  final TextInputType? keyboardType;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
          contentPadding: padding,
          isDense: true,
          isCollapsed: true,
          filled: true,
          fillColor: const Color(0xfff1f1f1),
          enabledBorder: textFiledBorder(radius),
          focusedBorder: textFiledBorder(radius),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hint,
          hintStyle: TextStyle(
              color: kPrimaryColor.withOpacity(0.73),
              fontWeight: FontWeight.w300)),
    );
  }
}

InputBorder textFiledBorder(double radius) {
  return OutlineInputBorder(
      borderSide: const BorderSide(
        color: kPrimaryColor,
      ),
      borderRadius: BorderRadius.circular(radius));
}
