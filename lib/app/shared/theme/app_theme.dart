import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../shared.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primary,
  colorScheme: const ColorScheme.light(primary: primary),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: white,
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(
      color: black,
    ),
    foregroundColor: black,
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: grey20,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: primary,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    hintStyle: smallRegular.copyWith(color: grey20),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primary,
  colorScheme: const ColorScheme.dark(primary: primary),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: black,
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(
      color: white,
    ),
    foregroundColor: white,
  ),
  inputDecorationTheme: InputDecorationTheme(
    isDense: true,
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white70,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: primary,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    hintStyle: smallRegular.copyWith(color: grey20),
  ),
);
