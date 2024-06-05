import 'package:flutter/material.dart';
import 'package:viteach_learning_app/screen/dummy_screen.dart';

class MyClassPage extends StatefulWidget {
  final Map<String, Object> course;
  const MyClassPage({super.key, required this.course});

  @override
  State<MyClassPage> createState() => _MyClassPageState();
}

class _MyClassPageState extends State<MyClassPage>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  final screentitle = ['English', 'Maths', 'Science', 'Social', 'Languages'];
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 224, 173, 250),
        title: Text(
          widget.course['title'] as String,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        bottom: TabBar(
            controller: controller,
            // labelColor: const Color.fromARGB(255, 255, 255, 255),
            // unselectedLabelColor: Colors.white,
            // overlayColor:
            //     const MaterialStatePropertyAll(Color.fromARGB(59, 0, 0, 0)),
            // splashBorderRadius: BorderRadius.circular(50),
            // splashFactory: InkSparkle.constantTurbulenceSeedSplashFactory,
            // enableFeedback: true,
            // indicatorColor: Color.fromARGB(255, 159, 245, 255),
            // indicatorWeight: 10,
            // indicator: BoxDecoration(
            //         gradient: LinearGradient(
            //             colors: [Colors.redAccent, Colors.orangeAccent]),
            //         borderRadius: BorderRadius.circular(50),
            //         color: Colors.redAccent),
            unselectedLabelColor: const Color.fromARGB(255, 255, 255, 255),
            indicatorSize: TabBarIndicatorSize.tab,
            splashBorderRadius: BorderRadius.circular(50),
            enableFeedback: true,
            indicatorWeight: 0,
            indicator: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color.fromARGB(255, 255, 255, 255),
                  Colors.orangeAccent
                ]),
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 255, 255, 255)),
            isScrollable: true,
            tabs: [
              Tab(
                // icon: Icon(Icons.book),
                text: 'English',
              ),
              Tab(
                // icon: Icon(Icons.book),
                text: 'Maths',
              ),
              Tab(
                // icon: Icon(Icons.book),
                text: 'Science',
              ),
              Tab(
                // icon: Icon(Icons.book),
                text: 'Social',
              ),
              Tab(
                // icon: Icon(Icons.book),
                text: 'Languages',
              )
            ]),
      ),
      body: TabBarView(
          controller: controller,
          physics: const BouncingScrollPhysics(),
          children: [
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
