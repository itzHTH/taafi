import 'package:flutter/material.dart';

import 'package:taafi/widgets/home_view_body.dart';

const kPrimaryColor = Color(0xff3481B9);

const kSecondaryColor = Color(0xff0055B5);
const kBgColor = Color(0xffDFEEFF);

const List<String> kBottomNavigationBarIcons = [
  "assets/icons/profile.svg",
  "assets/icons/calendar.svg",
  "assets/icons/sms.svg",
  "assets/icons/home.svg",
];

List<Widget> kMainPages = [  
 
  Container(
    color: Colors.black,
  ),
  Container(
    color: Colors.blue,
  ),
  Container(
    color: Colors.indigo,
  ),
 const HomeViewBody(),
];
