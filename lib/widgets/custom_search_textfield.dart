import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:taafi/constants.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        decoration: InputDecoration(
            isCollapsed: true,
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
            hintText: hint,
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.42)),
            prefixIcon: const Icon(
              Icons.search,
              color: kPrimaryColor,
              size: 30,
            ),
            enabledBorder: searchBorder(),
            focusedBorder: searchBorder()),
      ),
    );
  }

  GradientOutlineInputBorder searchBorder() {
    return GradientOutlineInputBorder(
        borderRadius: BorderRadius.circular(26),
        gradient: const LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight));
  }
}
