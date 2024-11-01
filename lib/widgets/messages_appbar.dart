import 'package:flutter/material.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';
import 'package:taafi/widgets/custom_icon.dart';
import 'package:taafi/widgets/custom_search_textfield.dart';

class MessagesAppBar extends StatelessWidget {
  const MessagesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              S.of(context).edit,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kSecondaryColor),
            ),
             SizedBox(
                width: 260, child: CustomSearchTextField(hint: S.of(context).searchMsg)),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CustomIcon(
                    icon: "arrow-left", color: kSecondaryColor, size: 36)),
          ],
        ),
      ),
    );
  }
}
