import 'package:flutter/material.dart';
import 'package:taafi/generated/l10n.dart';
import 'package:taafi/models/specifics_model.dart';
import 'package:taafi/widgets/custom_search_textfield.dart';
import 'package:taafi/widgets/home_app_bar.dart';
import 'package:taafi/widgets/home_page_view.dart';
import 'package:taafi/widgets/most_popular_doctor.dart';
import 'package:taafi/widgets/specific_topics.dart';

import '../models/doctor_page_view_model.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final PageController pageController = PageController();
  final List<DoctorPageViewModel> doctorLists = [
    DoctorPageViewModel(
        image: "assets/images/profilePic.jpg",
        name: "حذيفه محمد فليح",
        specific: "كأبه",
        time: "7:00ص - 11:00م",
        rate: 5),
    DoctorPageViewModel(
        image: "assets/images/ice.jpg",
        name: "مصطفى عقيل عبدالمجيد",
        specific: "تسليك",
        time: "عساس بليل يفتح",
        rate: 2),
    DoctorPageViewModel(
        image: "assets/images/murtada.jpg",
        name: "مرتضى رعد",
        specific: "تحشيش",
        time: "النهار كله فارغ",
        rate: 2),
    DoctorPageViewModel(
        image: "assets/images/turk.jpg",
        name: "مصطفى التركماني",
        specific: "سوالف",
        time: "صيحه وتلكه يمك",
        rate: 3),
    DoctorPageViewModel(
        image: "assets/images/sajad.png",
        name: "سجاد حسين",
        specific: "تصوير",
        time: "ماعرف",
        rate: 5)
  ];
  final List<SpecificsModel> specificList = [
    SpecificsModel(image: "assets/images/profilePic.jpg", name: "ليدر"),
    SpecificsModel(image: "assets/images/ice.jpg", name: "ثلجي"),
    SpecificsModel(image: "assets/images/murtada.jpg", name: "مرتده"),
    SpecificsModel(image: "assets/images/turk.jpg", name: "تركماني"),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          children: [
            const HomeAppBar(
              img: "assets/images/profilePic.jpg",
              name: "ليدر",
              phone: "07742869755",
            ),
            const SizedBox(
              height: 12,
            ),
            CustomSearchTextField(
              hint: S.of(context).searchMain,
            ),
            const SizedBox(height: 12),
            HomePageView(doctorLists: doctorLists),
            const SizedBox(
              height: 30,
            ),
            SpecificsTopics(
              specificList: specificList,
            ),
            const SizedBox(
              height: 20,
            ),
            const MostPopularDoctors(),
          ],
        ),
      ),
    );
  }
}
