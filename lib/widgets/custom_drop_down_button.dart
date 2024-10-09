import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taafi/constants.dart';

import '../generated/l10n.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.items,
  });

  final List<DropdownMenuItem> items;

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
            S.of(context).Governorate,
            style: const TextStyle(
              fontSize: 16,
              color: kPrimaryColor,
            ),
          ),
        ),
        DropdownButtonFormField(
          items: items,
          hint: Text(S.of(context).Baghdad),
          menuMaxHeight: 200,
          onChanged: (value) {},
          borderRadius: BorderRadius.circular(6),
          iconEnabledColor: kPrimaryColor,
          elevation: 3,
          decoration: InputDecoration(
            enabledBorder: dropDownBorder(),
            focusedBorder: dropDownBorder(),
            isCollapsed: true,
            isDense: true,
            contentPadding: const EdgeInsets.all(12),
            filled: true,
            fillColor: const Color(0xfff1f1f1),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder dropDownBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: const BorderSide(color: kPrimaryColor));
  }
}
