import 'package:flutter/material.dart';

import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';

import '../widgets/custom_bottom_navigation_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static String id = "HomeView";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 3;
  PageController? controller = PageController();

  @override
  void initState() {
    setState(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<String> kBNTexts = [
      S.of(context).ProfilePage,
      S.of(context).CalenderPage,
      S.of(context).ChatPage,
      S.of(context).homePage,
    ];

    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: kBgColor,
        bottomNavigationBar: CustomBottomNavigationBar(
          controller: controller,
          kBNTexts: kBNTexts,
          currentIndex: currentIndex,
        ),
        body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          itemBuilder: (context, index) {
            index = currentIndex;
            return kMainPages[index];
          },
          itemCount: 4,
          onPageChanged: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ));
  }
}
