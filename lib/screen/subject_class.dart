import 'package:flutter/material.dart';
import 'package:viteach_learning_app/screen/dummy_screen.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
  TabController? controller;
  final screentitle = ['English', 'Search', 'About', 'Settings', 'Notification'];
  @override
  void initState() {
    controller = TabController(length: 5, vsync: this);
    controller!.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
        // DefaultTabController(
        //   length: 5,
        //   child:
        Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 45, 154, 244),
        title: Text(
          screentitle[controller!.index],
          // 'Home ',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
            controller: controller,
            labelColor: Colors.amber,
            unselectedLabelColor: Colors.white,
            overlayColor: const MaterialStatePropertyAll(Colors.white24),
            splashBorderRadius: BorderRadius.circular(30),
            splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
            enableFeedback: true,
            indicatorColor: Colors.red,
            indicatorWeight: 10,
            indicator: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            isScrollable: true,
            tabs: const [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
                height: 100,
              ),
              Tab(
                icon: Icon(Icons.search),
                text: 'Search',
                height: 100,
              ),
              Tab(
                icon: Icon(Icons.info),
                text: 'About',
                height: 100,
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
                height: 100,
              ),
              Tab(
                icon: Icon(Icons.notification_add),
                text: 'Notification',
                height: 100,
              )
            ]),
      ),
      body: TabBarView(
          controller: controller,
          viewportFraction: 0.8,
          physics: const BouncingScrollPhysics(),
          children: const [
            Home_Screen(),
            Search_Screen(),
            About_Screen(),
            Settings_Screen(),
            Icon(
              Icons.notification_add,
              size: 100,
            )
          ]),
      // ),
    );
  }
}
