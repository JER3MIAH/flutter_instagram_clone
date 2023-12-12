import 'package:flutter/material.dart';

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  colorScheme: const ColorScheme.light(
    primary: Color.fromRGBO(0, 0, 0, 1),
    secondary: Colors.grey,
    background: Colors.white,
    tertiary: Color.fromRGBO(0, 149, 246, 1),
  ),
);
