import 'package:flutter/material.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/appbar_themes.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/bottom_sheet_themes.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/chip_themes.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/elevate_button_themes.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/outlined_button_themes.dart';
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
      appBarTheme: VAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: VBottomSheetTheme.lightBottomSheetTheme,
      chipTheme: VChipTheme.lightChipTheme,
      elevatedButtonTheme: VElevateButtonTheme.lightElevateButtonTheme,
      outlinedButtonTheme: VOutlinedButtonTheme.lightOutlinedThemeButton,
      textTheme: VTextTheme.lightTextTheme,
    );

    // Theme configurations for the Dark Mode
    static ThemeData darkTheme = ThemeData(
        useMaterial3: true,
        fontFamily: 'Rubik',
        brightness: Brightness.dark,
        primaryColor: Colors.blue, // Temporary
        scaffoldBackgroundColor: Color.fromARGB(255, 45, 45, 48), // Temporary
        appBarTheme: VAppBarTheme.darkAppBarTheme,
        bottomSheetTheme: VBottomSheetTheme.darkBottomSheetTheme,
        chipTheme: VChipTheme.darkChipTheme,
        elevatedButtonTheme: VElevateButtonTheme.darkElevateButtonTheme,
        outlinedButtonTheme: VOutlinedButtonTheme.darkOutlinedThemeButton,
        textTheme: VTextTheme.darkTextTheme,
    );
}