import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taafi/constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar(
      {super.key, required this.img, required this.name, required this.phone});

  final String img, name, phone;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: kPrimaryColor,
              radius: 36,
              child: CircleAvatar(
                backgroundColor: kPrimaryColor,
                radius: 34,
                backgroundImage: AssetImage(img),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  phone,
                  style:
                      const TextStyle(color: Color(0xffADA4A5), fontSize: 14),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
            Container(
              width: 50,
              height: 40,
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(26),
              ),
              child: const Icon(
                size: 20,
                FontAwesomeIcons.bell,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
