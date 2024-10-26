import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.pageController, required this.count,
  });

  final PageController pageController;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count,
      effect: ExpandingDotsEffect(
          activeDotColor: const Color(0xff0055B5),
          dotColor: const Color(0xff3481B9).withOpacity(.31),
          dotHeight: 12,
          dotWidth: 12),
      onDotClicked: (index) => pageController.animateToPage(index,
          curve: Curves.ease, duration: const Duration(milliseconds: 500)),
    );
  }
}
