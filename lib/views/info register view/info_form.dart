import 'package:flutter/material.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';
import 'package:taafi/widgets/custom_buttom.dart';
import 'package:taafi/widgets/custom_drop_down_button.dart';

import '../../widgets/info_text_formfiled.dart';

class InfoForm extends StatefulWidget {
  const InfoForm({super.key});

  @override
  State<InfoForm> createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<dynamic>> items = [
      DropdownMenuItem(value: "AlAnbar", child: Text(S.of(context).AlAnbar)),
      DropdownMenuItem(value: "Babil", child: Text(S.of(context).Babil)),
      DropdownMenuItem(value: "baghdad", child: Text(S.of(context).Baghdad)),
      DropdownMenuItem(value: "Basra", child: Text(S.of(context).Basra)),
      DropdownMenuItem(value: "DhiQar", child: Text(S.of(context).DhiQar)),
      DropdownMenuItem(
          value: "Qadisiyah", child: Text(S.of(context).Qadisiyah)),
      DropdownMenuItem(value: "Diyala", child: Text(S.of(context).Diyala)),
      DropdownMenuItem(value: "Duhok", child: Text(S.of(context).Duhok)),
      DropdownMenuItem(value: "Erbil", child: Text(S.of(context).Erbil)),
      DropdownMenuItem(value: "Halabja", child: Text(S.of(context).Halabja)),
      DropdownMenuItem(value: "Karbala", child: Text(S.of(context).Karbala)),
      DropdownMenuItem(value: "Kirkuk", child: Text(S.of(context).Kirkuk)),
      DropdownMenuItem(value: "Maysan", child: Text(S.of(context).Maysan)),
      DropdownMenuItem(value: "Muthanna", child: Text(S.of(context).Muthanna)),
      DropdownMenuItem(value: "Najaf", child: Text(S.of(context).Najaf)),
      DropdownMenuItem(value: "Nineveh", child: Text(S.of(context).Nineveh)),
      DropdownMenuItem(value: "Saladin", child: Text(S.of(context).Saladin)),
      DropdownMenuItem(
          value: "Sulaymaniyah", child: Text(S.of(context).Sulaymaniyah)),
      DropdownMenuItem(value: "Wasit", child: Text(S.of(context).Wasit)),
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 38, bottom: 24),
            child: Text(
              S.of(context).personalInfo,
              style: const TextStyle(
                  fontSize: 16,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
          InfoFormTextFiled(
            hint: S.of(context).EnterTheThird,
            label: S.of(context).ThirdName,
            keyboardType: TextInputType.name,
          ),
          const SizedBox(
            height: 12,
          ),
          InfoFormTextFiled(
            hint: S.of(context).EnterPhone,
            label: S.of(context).Phone,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(child: CustomDropDownButton(items: items)),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: InfoFormTextFiled(
                  hint: S.of(context).enterAge,
                  label: S.of(context).Age,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(height: 60, text: S.of(context).SaveInfo)
        ],
      ),
    );
  }
}
