
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taafi/generated/l10n.dart';
import 'package:taafi/widgets/custom_icon.dart';

import '../constants.dart';
import '../models/doctor_page_view_model.dart';

class DoctorsPageView extends StatefulWidget {
  const DoctorsPageView(
      {super.key, required this.doctor, required this.pageController});
  final List<DoctorPageViewModel> doctor;
  final PageController pageController;

  @override
  State<DoctorsPageView> createState() => _DoctorsPageViewState();
}

class _DoctorsPageViewState extends State<DoctorsPageView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      width: 360,
      child: PageView.builder(
        onPageChanged: (value) => currentIndex = value,
        controller: widget.pageController,
        itemCount: widget.doctor.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kSecondaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              AssetImage(widget.doctor[index].image),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${S.of(context).Dr} ${widget.doctor[index].name}",
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              children: [
                                Text(
                                    "${S.of(context).specific} ${widget.doctor[index].specific}",
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0xffBBBBBB),
                                    )),
                                const SizedBox(
                                  width: 8,
                                ),
                                Row(
                                    children: List.generate(
                                  widget.doctor[index].rate.toInt(),
                                  (index) {
                                    return const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 2.0),
                                      child: Icon(
                                        FontAwesomeIcons.solidStar,
                                        color: Color(0xffFFD447),
                                        size: 14,
                                      ),
                                    );
                                  },
                                )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomIcon(
                          color: Color(0xffBBBBBB),
                          icon: "calendar-02",
                          size: 28,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Column(
                          children: [
                            Text(
                              S.of(context).workTime,
                              style: const TextStyle(
                                  fontSize: 16, color: Color(0xffBBBBBB)),
                            ),
                            Text(
                              widget.doctor[index].time,
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xffBBBBBB)),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 65,
                        ),
                        Card(
                          elevation: 10,
                          color: Colors.transparent,
                          child: Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              S.of(context).bookNow,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            )),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
