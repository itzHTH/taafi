import 'package:flutter/material.dart';

import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';
import 'package:taafi/models/specifics_model.dart';
import 'package:taafi/widgets/custom_icon.dart';
import 'package:taafi/widgets/specific_item.dart';

class SpecificsTopics extends StatelessWidget {
  const SpecificsTopics({
    super.key,
    required this.specificList,
  });

  final List<SpecificsModel> specificList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Text(
                  S.of(context).viewAll,
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              const CustomIcon(
                color: kPrimaryColor,
                icon: "server",
                size: 24,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                S.of(context).specifics,
                style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              4,
              (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: SpecificsItem(
                    specificsModel: specificList[index],
                  ),
                );
              },
            ))
      ],
    );
  }
}
