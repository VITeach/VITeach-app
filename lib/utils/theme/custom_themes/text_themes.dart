import 'package:flutter/material.dart';

class VTextTheme {
  VTextTheme._(); // Private Constructor

  // Light Theme Text
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Rubik'),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Rubik'),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Rubik'),

    titleLarge:const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Rubik'),
    titleMedium:const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Rubik'),
    titleSmall:const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black, fontFamily: 'Rubik'),

    bodyLarge: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Rubik'),
    bodyMedium: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.black, fontFamily: 'Rubik'),
    bodySmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.black.withOpacity(.5), fontFamily: 'Rubik'),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black, fontFamily: 'Rubik'),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black.withOpacity(.5), fontFamily: 'Rubik'),
  );

  // Dark Theme Text
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Rubik'),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white,fontFamily: 'Rubik'),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white,fontFamily: 'Rubik'),

    titleLarge:const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white,fontFamily: 'Rubik'),
    titleMedium:const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white,fontFamily: 'Rubik'),
    titleSmall:const TextStyle().copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white,fontFamily: 'Rubik'),

    bodyLarge: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w500, color: Colors.white,fontFamily: 'Rubik'),
    bodyMedium: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.normal, color: Colors.white,fontFamily: 'Rubik'),
    bodySmall: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.w500, color: Colors.white.withOpacity(.5),fontFamily: 'Rubik'),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white,fontFamily: 'Rubik'),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white.withOpacity(.5),fontFamily: 'Rubik'),
  );
}