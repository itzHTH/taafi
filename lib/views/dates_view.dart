import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taafi/constants.dart';
import 'package:taafi/generated/l10n.dart';

class DatesView extends StatelessWidget {
  const DatesView({super.key});

  static String id = "DateView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: datesAppbar(context),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) => const DateWidget(),
        ));
  }

  PreferredSize datesAppbar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(MediaQuery.of(context).size.width, 80),
      child: Center(
        child: Text(
          S.of(context).dateCalender,
          style: const TextStyle(
              fontSize: 24, color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        color: kPrimaryColor,
        radius: const Radius.circular(28),
        borderType: BorderType.RRect,
        // padding: const EdgeInsets.all(12),
        borderPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        dashPattern: const [30, 20],
        strokeWidth: 2,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("assets/images/doctor.png"),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${S.of(context).Dr} احمد عباس خالد",
                            style: const TextStyle(
                                fontSize: 20,
                                color: kSecondaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text("${S.of(context).specific} امراض القلب",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff8F8F8F),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Card(
                        elevation: 0,
                        color: Colors.transparent,
                        child: Container(
                          width: 82,
                          height: 30,
                          decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Text(
                              "00:00:00:00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "الموعد: 8/8/2024",
                        style: TextStyle(
                            fontSize: 20,
                            color: kSecondaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "الساعة: 12:30م",
                        style: TextStyle(
                            fontSize: 20,
                            color: kSecondaryColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Card(
                    elevation: 0,
                    color: Colors.transparent,
                    child: Container(
                      width: 110,
                      height: 60,
                      decoration: BoxDecoration(
                          color: const Color(0xffC41926),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                        S.of(context).cancelBooking,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
