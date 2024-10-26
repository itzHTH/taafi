import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    required this.color, required this.size,
  });
  final String icon;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/icons/$icon.svg",
      color: color,
      height: size,
    );
  }
}
