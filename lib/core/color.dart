import 'package:flutter/material.dart';

class Palette {
  static Color black = const Color.fromRGBO(65, 65, 65, 1);
  static Color grey = const Color.fromRGBO(249, 249, 249, 1);
  static Color white = const Color.fromRGBO(241, 246, 255, 1);
  static Color navyBlue = const Color.fromRGBO(0, 22, 69, 1);
  static Gradient blueGradient = const LinearGradient(colors: [
    Color.fromRGBO(80, 97, 255, 1),
    Color.fromRGBO(16, 91, 251, 1),
  ]);
}
