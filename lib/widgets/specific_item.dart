import 'package:flutter/material.dart';
import 'package:taafi/models/specifics_model.dart';

class SpecificsItem extends StatelessWidget {
  const SpecificsItem({
    super.key,
    required this.specificsModel,
  });

  final SpecificsModel specificsModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 42,
            backgroundColor: const Color(0xff3481B9).withOpacity(.31),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                specificsModel.image,
                height: 56,
              ),
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
