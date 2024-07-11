import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:viteach_learning_app/screen/about_us.dart';
import 'package:viteach_learning_app/screen/navigation_menubottom.dart';
import 'package:viteach_learning_app/screen/privacy_policy.dart';

class Settings_Page extends StatefulWidget {
  const Settings_Page({super.key});

  @override
  State<Settings_Page> createState() => _Settings_PageState();
}

class _Settings_PageState extends State<Settings_Page> {
  bool isSwitched =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: SizedBox(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding:EdgeInsets.all(2),
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset("assets/images/Preferences-pana.png")),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 2.0),
              child: ListTile(
                leading: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(120, 202, 176, 246),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: !isSwitched ? Icon(
                    Icons.remove_red_eye,
                    color: Colors.black38,
                  ) : Icon(
                    Icons.panorama_fish_eye,
                    color: Colors.black38,
                  ),
                ),
                title: !isSwitched ? Text("Dark Mode", style: TextStyle(fontSize: 20)): Text("Light Mode", style: TextStyle(fontSize: 20)),
                trailing: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 2.0),
              child: ListTile(
                leading: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(120, 202, 176, 246),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.policy_outlined,
                    color: Colors.black38,
                  ),
                ),
                title: Text("Privacy Policy", style: TextStyle(fontSize: 20)),
                trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return PrivacyPolicy();
                                        },
                                      ),
                                    );
                    },
                    child: Icon(Icons.arrow_forward, color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
              child: ListTile(
                leading: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(120, 202, 176, 246),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.people,
                    color: Colors.black38,
                  ),
                ),
                title: Text("About Us", style: TextStyle(fontSize: 20)),
                trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return AboutUs();
                                        },
                                      ),
                                    );
                    },
                    child: Icon(Icons.arrow_forward, color: Colors.white)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.browser_updated,
                    color: Colors.black38,),
                  Text("Version", style: TextStyle(fontSize: 20)),
                  SizedBox(width: 170),
                  Text("v1.0.0.0", style: TextStyle(fontSize: 18)),
                ],
              )
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationMenubottom(),
    );
  }
}
