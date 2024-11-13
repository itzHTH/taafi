import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';

import 'package:taafi/widgets/custom_icon.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  static String id = "BookingView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bookingAppBar(context),
      body: const BookingBody(),
    );
  }

  PreferredSize bookingAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 80),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomIcon(icon: "search", color: kPrimaryColor, size: 28),
            const Spacer(),
            const Text(
              "طب القلب",
              style: TextStyle(
                  fontSize: 24,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CustomIcon(
                    icon: "arrow-left", color: kSecondaryColor, size: 32)),
          ],
        ),
      )),
    );
  }
}

class BookingBody extends StatelessWidget {
  const BookingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: DottedBorder(
          color: kPrimaryColor,
          radius: const Radius.circular(28),
          borderType: BorderType.RRect,
          padding: const EdgeInsets.all(12),
          borderPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          dashPattern: const [30, 20],
          strokeWidth: 2,
          child: SizedBox(
            height: 180,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage("assets/images/doctor.png"),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${S.of(context).Dr} أحمد عباس خالد",
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: kSecondaryColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              Row(
                                children: [
                                  Text("${S.of(context).specific} امراض القلب",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff8F8F8F),
                                      )),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Row(
                                      children: List.generate(
                                    4,
                                    (index) {
                                      return const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
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
                            color: Color(0xff8F8F8F),
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
                                    fontSize: 16, color: Color(0xff8F8F8F)),
                              ),
                              const Text(
                                "6:00ص - 6:00م",
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff8F8F8F)),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 65,
                          ),
                          GestureDetector(
                            onTap: () => showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                insetPadding: const EdgeInsets.all(20),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text(
                                        "استمارة حجز",
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("الموعد: 2024/8/8",
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 18)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("الساعة: 12:30 م",
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 18)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("الرقم التسلسلي: 21",
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 18)),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                              "ملاحظة : يحضر الطبيب في الساعة 12:00م الرجاء الحضور في الموعد أعلاه",
                                              style: TextStyle(
                                                  color: kSecondaryColor,
                                                  fontSize: 18)),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () => Navigator.pop(context),
                                            child: Container(
                                              height: 65,
                                              width: 200,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                color: kPrimaryColor,
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 8),
                                              child: const Center(
                                                child: Text(
                                                  "تأكيد الحجز",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          GestureDetector(
                                            onTap: () => Navigator.pop(context),
                                            child: Container(
                                              height: 65,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: const Color(0xffC41926),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 8),
                                              child: const Center(
                                                child: Text(
                                                  "الغاء",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            child: Card(
                              elevation: 0,
                              color: Colors.transparent,
                              child: Container(
                                width: 100,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: kSecondaryColor,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text(
                                  S.of(context).bookNow,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
