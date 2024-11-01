import 'package:flutter/material.dart';
import 'package:taafi/models/doctor_page_view_model.dart';
import 'package:taafi/widgets/page_indicator.dart';

import 'doctor_page_view.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key, required this.doctorLists});
  final List<DoctorPageViewModel> doctorLists;

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  late final PageController? pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      FutureBuilder(
        future: Future.value(true),
        builder: (context, snapshot) {
          return Container();
        },
      ),
      Column(
        children: [
          DoctorsPageView(
            doctor: widget.doctorLists,
            pageController: pageController!,
          ),
          const SizedBox(
            height: 6,
          ),
          PageIndicator(
            pageController: pageController!,
            count: widget.doctorLists.length,
          ),
        ],
      ),
    ]);
  }
}
