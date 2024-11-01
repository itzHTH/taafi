import 'package:flutter/material.dart';
import 'package:taafi/constants.dart';

class DoctorMessage extends StatelessWidget {
  const DoctorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipper: MsgClipper(),
          child: Container(
            height: 80,
            width: 340,
            color: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "8:00 ص",
                    style: TextStyle(
                        color: Colors.white.withOpacity(.67),
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Card(
                        elevation: 5,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffFF1414)),
                          child: const Center(
                            child: Text(
                              "4",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "د.حامد العلي",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              constraints: const BoxConstraints(maxWidth: 300),
                              child: Text(
                                maxLines: 1,
                                "تم حجز موعدك غداً عن الساعة الثامنة صباحاُ."
                                "...",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(.67),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Spacer()
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 328,
          bottom: 38,
          child: Card(
              shape: const CircleBorder(),
              elevation: 5,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  "assets/images/doctor.png",
                  fit: BoxFit.cover,
                ),
              )),
        )
      ],
    );
  }
}

class MsgClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.04651163, size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.08320831,
        size.height * 0.5000000,
        size.width * 0.1129568,
        size.height * 0.3507617,
        size.width * 0.1129568,
        size.height * 0.1666667);
    path_0.cubicTo(size.width * 0.1129568, size.height * 0.08913517,
        size.width * 0.1234030, 0, size.width * 0.1388578, 0);
    path_0.lineTo(size.width * 0.9800664, 0);
    path_0.cubicTo(size.width * 0.9910764, 0, size.width,
        size.height * 0.04477150, size.width, size.height * 0.1000000);
    path_0.lineTo(size.width, size.height * 0.9000000);
    path_0.cubicTo(size.width, size.height * 0.9552283, size.width * 0.9910764,
        size.height, size.width * 0.9800664, size.height);
    path_0.lineTo(size.width * 0.01993359, size.height);
    path_0.cubicTo(size.width * 0.008924585, size.height, 0,
        size.height * 0.9552283, 0, size.height * 0.9000000);
    path_0.lineTo(0, size.height * 0.6632100);
    path_0.cubicTo(
        0,
        size.height * 0.5669950,
        size.width * 0.02733246,
        size.height * 0.5000000,
        size.width * 0.04651163,
        size.height * 0.5000000);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
