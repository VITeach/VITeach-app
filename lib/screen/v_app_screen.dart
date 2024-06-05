import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:viteach_learning_app/screen/navigation_menubottom.dart';
import 'package:viteach_learning_app/screen/search_bar.dart';
import 'package:viteach_learning_app/utils/constants/colors.dart';
import 'package:viteach_learning_app/utils/device/device_utilities.dart';
import 'package:viteach_learning_app/utils/models/greetings.dart';
import 'package:viteach_learning_app/widgets/app_bar.dart';

class VAppScreen extends StatelessWidget implements PreferredSizeWidget {
  final wishes = Wish().greeting();
  VAppScreen({super.key});

  Future<void> openAppView(String url) async {
    if (!await launchUrl((Uri.parse(url)), mode: LaunchMode.inAppWebView)) {
      throw Exception("Couldn't launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return VAppBar(
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Hello!",
          style: TextStyle(fontSize: 20),
        ),
        Text(
          wishes,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
        )
      ]),
      actions: [
        Stack(children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                openAppView("https://viteach.org.in/");
              },
              icon: const Icon(Iconsax.link, color: VColors.black)),
          Positioned(
            right: 1,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: VColors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Center(
                child: Text('1',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 12)),
              )),
            ),
          )
        ]),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(VDeviceUtils.getAppBarHeight());
}
