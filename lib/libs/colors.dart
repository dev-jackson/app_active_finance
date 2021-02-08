

import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Color(0xFFe5e6ed),
    bottomAppBarColor: Color(0xfff7f9fd),
    textSelectionColor: Colors.blue,
    buttonColor: Color(0xFF2e8ce4)
  );

  static final dark = ThemeData.dark().copyWith(
    primaryColor: Color(0xffFFFFFF),
    backgroundColor: Color(0xFF383838),
    bottomAppBarColor: Color(0xFF383838),
    textSelectionColor: Colors.white,
    buttonColor: Color(0xFF2e8ce4),
  ); 
}