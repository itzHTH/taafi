import 'package:flutter/material.dart';

import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';
import 'package:taafi/models/specifics_model.dart';

import 'package:taafi/widgets/custom_search_textfield.dart';
import 'package:taafi/widgets/specific_item.dart';
import 'package:taafi/widgets/specifics_appbar.dart';

class SpecificView extends StatefulWidget {
  const SpecificView({super.key});

  static String id = "SpecificView";

  @override
  State<SpecificView> createState() => _SpecificViewState();
}

class _SpecificViewState extends State<SpecificView> {
  final SpecificsModel specificsModel =
      SpecificsModel(image: "assets/images/app_icon.png", name: "Test");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Column(
        children: [
          const SpecificViewAppBar(),
          SizedBox(
              width: 350,
              child: CustomSearchTextField(hint: S.of(context).searchSpecfic)),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisSpacing: 10, crossAxisSpacing: 0),
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 0),
              itemBuilder: (context, index) {
                return SpecificsItem(
                  specificsModel: specificsModel,
                  radius: 37,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
