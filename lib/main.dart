import 'package:flutter/material.dart';
import 'package:viteach_learning_app/screen/review_screen.dart';
import 'package:viteach_learning_app/widgets/saved_provider.dart';
import 'app.dart';
import 'package:provider/provider.dart'; 
import 'package:get/get.dart';
import 'package:upgrader/upgrader.dart';
import 'package:viteach_learning_app/screen/navigation_menubottom.dart';
import 'package:viteach_learning_app/screen/search_bar.dart';
import 'package:viteach_learning_app/screen/v_app_screen.dart';
import 'package:viteach_learning_app/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SavedProvider(),
      child: GetMaterialApp(
          themeMode: ThemeMode.system,
          theme: VAppTheme.lightTheme,
          darkTheme: VAppTheme.darkTheme,
          debugShowCheckedModeBanner: false,
          home: UpgradeAlert(child: MyHomePageView())),
    );
  }
}
