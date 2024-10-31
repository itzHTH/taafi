import 'package:flutter/material.dart';
import 'package:taafi/models/specifics_model.dart';

class SpecificsItem extends StatelessWidget {
  const SpecificsItem({
    super.key,
    required this.specificsModel, required this.radius,
  });

  final SpecificsModel specificsModel;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: radius,
            backgroundColor: const Color(0xff3481B9).withOpacity(.31),
            child: Image.asset(
              specificsModel.image,
              height: 56,
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxWidth: 84),
            child: Text(
              specificsModel.name,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
