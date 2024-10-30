import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taafi/constants.dart';

// ignore: must_be_immutable
class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar(
      {super.key,
      required this.kBNTexts,
      required this.currentIndex,
      required this.controller});

  final List<String> kBNTexts;
  int currentIndex = 3;
  PageController? controller;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          4,
          (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  widget.currentIndex = index;
                  widget.controller!.jumpToPage(
                    widget.currentIndex,
                  );
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  ClipPath(
                    clipper: NavClipper(),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                      color: widget.currentIndex == index
                          ? kSecondaryColor
                          : Colors.white,
                      height: 55,
                      width: 55,
                      child: AnimatedPadding(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                        padding: EdgeInsets.only(
                            bottom: widget.currentIndex == index ? 8.0 : 0),
                        child: AnimatedSize(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 4.0),
                              child: SvgPicture.asset(
                                kBottomNavigationBarIcons[index],
                                color: widget.currentIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                clipBehavior: widget.currentIndex == index
                                    ? Clip.hardEdge
                                    : Clip.none,
                                height: widget.currentIndex == index ? 28 : 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    widget.kBNTexts[index],
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: widget.currentIndex == index
                            ? FontWeight.w500
                            : FontWeight.w400),
                  ),
                  const Spacer(
                    flex: 1,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class NavClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.4583300);
    path_0.cubicTo(
        size.width,
        size.height * 0.7114600,
        size.width * 0.5000000,
        size.height * 1.193952,
        size.width * 0.5000000,
        size.height * 0.9166620);
    path_0.cubicTo(size.width * 0.5000000, size.height * 0.6393720, 0,
        size.height * 0.7114600, 0, size.height * 0.4583300);
    path_0.cubicTo(0, size.height * 0.2052020, size.width * 0.2238580, 0,
        size.width * 0.5000000, 0);
    path_0.cubicTo(size.width * 0.7761420, 0, size.width,
        size.height * 0.2052020, size.width, size.height * 0.4583300);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
