import 'package:flutter/material.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/text_themes.dart';

class VAppTheme {
    VAppTheme._(); // Private Constructor

    // Theme configurations for the Light Mode
    static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Rubik',
      brightness: Brightness.light,
      primaryColor: Colors.blue, // Temporary
      scaffoldBackgroundColor: Colors.white, // Temporary
      textTheme: VTextTheme.lightTextTheme,
    );

    // Theme configurations for the Dark Mode
    static ThemeData darkTheme = ThemeData(
        useMaterial3: true,
        fontFamily: 'Rubik',
        brightness: Brightness.dark,
        primaryColor: Colors.blue, // Temporary
        scaffoldBackgroundColor: Colors.black, // Temporary
        textTheme: VTextTheme.darkTextTheme,
    );
}