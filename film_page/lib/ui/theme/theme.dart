import 'package:flutter/material.dart';

const primaryColor = Colors.redAccent;

const textTheme = TextTheme(
  titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
  headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: primaryColor,
  textTheme: textTheme,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.dark,
  ),
  dividerTheme: DividerThemeData(color: Colors.grey.shade300),
  scaffoldBackgroundColor: Color(0xFF01061D),
);

final lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: primaryColor,
  textTheme: textTheme,
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.light,
  ),
  dividerTheme: DividerThemeData(color: Colors.grey.shade300),
  scaffoldBackgroundColor: Color(0xFFEFF1F3),
);
