import 'package:flutter/material.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';
import 'package:taafi/widgets/custom_icon.dart';

class SpecificViewAppBar extends StatelessWidget {
  const SpecificViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 1,
          ),
          const CustomIcon(icon: "server", color: kPrimaryColor, size: 28),
          const SizedBox(
            width: 4,
          ),
          Text(
            S.of(context).specificsMed,
            style: const TextStyle(
                fontSize: 24,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold),
          ),
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const CustomIcon(
                  icon: "arrow-left", color: kSecondaryColor, size: 32)),
        ],
      ),
    ));
  }
}
