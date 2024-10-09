import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/widgets/custome_text_form_filed.dart';

class InfoFormTextFiled extends StatelessWidget {
  const InfoFormTextFiled(
      {super.key, required this.label, required this.hint, this.keyboardType});

  final String label, hint;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 8.0,
            right: Intl.getCurrentLocale() == "ar" ? 4 : 0,
            left: Intl.getCurrentLocale() == "en" ? 4 : 0,
          ),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: kPrimaryColor,
            ),
          ),
        ),
        CustomTextFormFiled(
          radius: 6,
          hint: hint,
          padding: const EdgeInsets.all(12),
          keyboardType: keyboardType,
        )
      ],
    );
  }
}
