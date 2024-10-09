import 'package:flutter/material.dart';
import 'package:taafi/constants.dart';

class AskRow extends StatelessWidget {
  const AskRow({
    super.key,
    required this.fText,
    required this.sText,
    this.onTap,
  });
  final String fText, sText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          fText,
          style: const TextStyle(
              color: kPrimaryColor, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 6,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            sText,
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
