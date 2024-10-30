import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taafi/generated/l10n.dart';
import 'package:taafi/widgets/custom_icon.dart';

import '../constants.dart';

class MostPopularDoctors extends StatelessWidget {
  const MostPopularDoctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              const Spacer(
                flex: 1,
              ),
              const CustomIcon(
                color: kPrimaryColor,
                icon: "users_profiles",
                size: 24,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                S.of(context).popularDoctors,
                style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 380,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 12,
              mainAxisSpacing: 20,
            ),
            clipBehavior: Clip.hardEdge,
            padding: const EdgeInsets.symmetric(horizontal: 28),
            itemBuilder: (context, index) {
              return Stack(clipBehavior: Clip.none, children: [
                MostPopularItem(
                  index: index,
                ),
                Positioned(
                  top: 35,
                  right: index % 2 != 0 ? 0 : -135,
                  left: index % 2 != 0 ? -135 : 0,
                  bottom: 0,
                  child: const Column(
                    children: [
                      Text(
                        maxLines: 2,
                        "حذيفه محمد",
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "اخصائي تغذيه",
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                )
              ]);
            },
          ),
        )
      ],
    );
  }
}

class MostPopularItem extends StatefulWidget {
  const MostPopularItem({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<MostPopularItem> createState() => _MostPopularItemState();
}

class _MostPopularItemState extends State<MostPopularItem> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipPath(
          clipper: widget.index % 2 != 0 ? LeftClipper() : RightClipper(),
          child: Container(
            height: 300,
            width: 300,
            color: kSecondaryColor,
            child: Image.asset(
              fit: BoxFit.contain,
              "assets/images/doctor.png",
              alignment: Alignment.bottomCenter,
            ),
          )),
      Positioned(
        top: 10,
        left: widget.index % 2 != 0 ? 110 : -110,
        right: 0,
        child: GestureDetector(
          onTap: () {
            isLiked = !isLiked;
            setState(() {});
          },
          child: CircleAvatar(
            backgroundColor: kPrimaryColor,
            maxRadius: 13,
            minRadius: 13,
            child: Icon(
              isLiked
                  ? FontAwesomeIcons.solidThumbsUp
                  : FontAwesomeIcons.thumbsUp,
              size: 15,
            ),
          ),
        ),
      )
    ]);
  }
}

class LeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.08000000, 0);
    path_0.cubicTo(size.width * 0.03581720, 0, 0, size.height * 0.03581720, 0,
        size.height * 0.08000000);
    path_0.cubicTo(
        0,
        size.height * 0.1536380,
        size.width * 0.05969540,
        size.height * 0.2133333,
        size.width * 0.1333333,
        size.height * 0.2133333);
    path_0.lineTo(size.width * 0.1866667, size.height * 0.2133333);
    path_0.cubicTo(
        size.width * 0.2603047,
        size.height * 0.2133333,
        size.width * 0.3200000,
        size.height * 0.2730287,
        size.width * 0.3200000,
        size.height * 0.3466667);
    path_0.cubicTo(
        size.width * 0.3200000,
        size.height * 0.4203047,
        size.width * 0.2603047,
        size.height * 0.4800000,
        size.width * 0.1866667,
        size.height * 0.4800000);
    path_0.lineTo(size.width * 0.1466667, size.height * 0.4800000);
    path_0.cubicTo(size.width * 0.06566493, size.height * 0.4800000, 0,
        size.height * 0.5456647, 0, size.height * 0.6266667);
    path_0.lineTo(0, size.height * 0.9200000);
    path_0.cubicTo(0, size.height * 0.9641800, size.width * 0.03581720,
        size.height, size.width * 0.08000000, size.height);
    path_0.lineTo(size.width * 0.9200000, size.height);
    path_0.cubicTo(size.width * 0.9641800, size.height, size.width,
        size.height * 0.9641800, size.width, size.height * 0.9200000);
    path_0.lineTo(size.width, size.height * 0.08000000);
    path_0.cubicTo(size.width, size.height * 0.03581720, size.width * 0.9641800,
        0, size.width * 0.9200000, 0);
    path_0.lineTo(size.width * 0.08000000, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class RightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.08000000, 0);
    path_0.cubicTo(size.width * 0.03581720, 0, 0, size.height * 0.03581720, 0,
        size.height * 0.08000000);
    path_0.lineTo(0, size.height * 0.9200000);
    path_0.cubicTo(0, size.height * 0.9641800, size.width * 0.03581720,
        size.height, size.width * 0.08000000, size.height);
    path_0.lineTo(size.width * 0.9200000, size.height);
    path_0.cubicTo(size.width * 0.9641800, size.height, size.width,
        size.height * 0.9641800, size.width, size.height * 0.9200000);
    path_0.lineTo(size.width, size.height * 0.6266667);
    path_0.cubicTo(
        size.width,
        size.height * 0.5456647,
        size.width * 0.9343333,
        size.height * 0.4800000,
        size.width * 0.8533333,
        size.height * 0.4800000);
    path_0.lineTo(size.width * 0.8133333, size.height * 0.4800000);
    path_0.cubicTo(
        size.width * 0.7396933,
        size.height * 0.4800000,
        size.width * 0.6800000,
        size.height * 0.4203047,
        size.width * 0.6800000,
        size.height * 0.3466667);
    path_0.cubicTo(
        size.width * 0.6800000,
        size.height * 0.2730287,
        size.width * 0.7396933,
        size.height * 0.2133333,
        size.width * 0.8133333,
        size.height * 0.2133333);
    path_0.lineTo(size.width * 0.8666667, size.height * 0.2133333);
    path_0.cubicTo(size.width * 0.9403067, size.height * 0.2133333, size.width,
        size.height * 0.1536380, size.width, size.height * 0.08000000);
    path_0.lineTo(size.width, size.height * 0.08000000);
    path_0.cubicTo(size.width, size.height * 0.03581720, size.width * 0.9641800,
        0, size.width * 0.9200000, 0);
    path_0.lineTo(size.width * 0.08000000, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
