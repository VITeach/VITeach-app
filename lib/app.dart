import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viteach_learning_app/screen/Onboarding_Screen/Onboarding_screens.dart';
import 'package:viteach_learning_app/utils/theme/theme.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: VAppTheme.lightTheme,
      darkTheme: VAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}