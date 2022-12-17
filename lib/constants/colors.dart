import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can't instantiate this class

  static const customGrey = Color(0xff707B8A);
  static const Map<int, Color> primaryColor = const <int, Color>{
    50: Color.fromARGB(255, 232, 250, 255),
    100: Color.fromARGB(255, 198, 243, 255),
    200: Color.fromARGB(255, 160, 255, 250),
    300: Color.fromARGB(255, 121, 255, 255),
    400: Color.fromARGB(255, 93, 177, 255),
    500: Color.fromARGB(255, 64, 207, 255),
    600: Color.fromARGB(255, 58, 196, 255),
    700: Color.fromARGB(255, 50, 170, 255),
    800: Color.fromARGB(255, 42, 170, 255),
    900: Color.fromARGB(255, 28, 172, 255),
  };
}
