import 'package:flutter/material.dart';

final darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 1),
  colorScheme: const ColorScheme.dark(
    primary: Colors.white,
    secondary: Colors.grey,
    background: Color.fromRGBO(0, 0, 0, 1),
    tertiary: Color.fromRGBO(0, 149, 246, 1),
  ),
);
