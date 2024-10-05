import 'package:flutter/material.dart';
import 'package:msh_checkbox/msh_checkbox.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MSHCheckbox(
          onChanged: (selected) {
            setState(() {
              isChecked = selected;
            });
          },
          value: isChecked,
          size: 16,
          style: MSHCheckboxStyle.fillFade,
          colorConfig: MSHColorConfig(
            checkColor: (p0) => Colors.white,
            fillColor: (p0) => kPrimaryColor,
            borderColor: (p0) => kPrimaryColor,
            tintColor: (p0) => kPrimaryColor,
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          S.of(context).SaveLogin,
          style: const TextStyle(color: kPrimaryColor, fontSize: 12),
        ),
      ],
    );
  }
}
