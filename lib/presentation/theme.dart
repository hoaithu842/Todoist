import 'package:flutter/material.dart';

final lightThemeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    surface: Color.fromARGB(255, 255, 255, 255),
    onSurface: Color.fromARGB(255, 0, 0, 0),
    secondary: Color.fromARGB(255, 0, 0, 0),
    secondaryContainer: Color.fromARGB(255, 247, 247, 248),
    onSecondaryContainer: Color.fromARGB(255, 160, 160, 165),
    primary: Color.fromARGB(255, 20, 23, 24),
    tertiaryContainer: Color.fromARGB(255, 247, 248, 250),
  ),
);

final darkThemeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    surface: Color.fromARGB(255, 0, 0, 0),
    onSurface: Color.fromARGB(255, 255, 255, 255),
    secondary: Color.fromARGB(255, 117, 116, 116),
    secondaryContainer: Color.fromARGB(255, 35, 38, 39),
    onSecondaryContainer: Color.fromARGB(255, 70, 70, 70),
    primary: Color.fromARGB(255, 35, 38, 39),
    tertiaryContainer: Color.fromARGB(255, 20, 23, 24),
  ),
);
