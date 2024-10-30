import 'package:flutter/material.dart';
import 'package:taafi/widgets/info_form.dart';

class InfoRegister extends StatelessWidget {
  const InfoRegister({super.key});

  static String id = "InfoView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/personal_info.png",
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(color: Colors.black.withOpacity(0.35)))),
              height: 480,
              width: double.infinity,
              child: const SingleChildScrollView(child: InfoForm()),
            ),
          ),
        ],
      ),
    );
  }
}
