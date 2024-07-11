import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:viteach_learning_app/global_variables.dart';
import 'package:viteach_learning_app/screen/class_page.dart';
import 'package:viteach_learning_app/screen/course_card.dart';
import 'package:viteach_learning_app/screen/course_page.dart';
import 'package:viteach_learning_app/screen/navigation_menubottom.dart';
import 'package:viteach_learning_app/screen/v_app_screen.dart';
import 'package:viteach_learning_app/utils/constants/colors.dart';
import 'package:viteach_learning_app/utils/constants/sizes.dart';
import 'package:viteach_learning_app/utils/device/device_utilities.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/text_themes.dart';
import 'package:viteach_learning_app/widgets/quote_widget.dart';

class VSearchBar extends StatefulWidget {
  const VSearchBar({super.key});

  @override
  State<VSearchBar> createState() => _VSearchBarState();
}

class _VSearchBarState extends State<VSearchBar> {
  final List<String> filters = const ["All", "Class 1", "Class 2", "Class 3"];
  late String selectedfilter = filters[0];
  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  List<Map<String, Object>> _founditems = [];

  @override
  initState() {
    selectedfilter = filters[0];
    _founditems = List.from(courses);
    super.initState();
  }

  void _runfilter(String enteredKeyword) {
    setState(() {
      if (enteredKeyword.isEmpty) {
        _founditems = List.from(courses); // Reset to all courses if search is empty
      } else {
        _founditems = courses
            .where((course) => course['title']
            .toString()
            .toLowerCase()
            .contains(enteredKeyword.toLowerCase()))
            .toList();
      }
    });
  }

  void _filterCourses(String filter) {
    setState(() {
      if (filter == "All") {
        _founditems = List.from(courses); // Show all courses
      } else {
        _founditems = courses
            .where((course) => course['title'] == filter)
            .toList();
      }
      selectedfilter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: VAppScreen(),
      body: LiquidPullToRefresh(
        color: Colors.deepPurple,
        height: 300,
        backgroundColor: Colors.deepPurple[200],
        onRefresh: _handleRefresh,
        child: SafeArea(
          child: SizedBox(
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TextField(
                    onChanged: _runfilter,
                    decoration: InputDecoration(
                      hintText: 'Search Courses',
                      prefixIcon: Icon(Iconsax.search_normal),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(225, 225, 225, 1),
                        ),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(100),
                          right: Radius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      itemCount: filters.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final label = filters[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: FilterChip(
                            avatar: Icon(Iconsax.book),
                            backgroundColor: selectedfilter == label
                                ? Color.fromARGB(255, 164, 210, 249)
                                : Color.fromRGBO(245, 247, 249, 1),
                            side: const BorderSide(
                                color: Color.fromRGBO(245, 247, 249, 1)),
                            label: Text(
                              label,
                              style: VTextTheme.lightTextTheme.bodySmall,
                            ),
                            labelStyle: TextStyle(fontSize: 13),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            elevation: 3.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            selected: selectedfilter == label,
                            onSelected: (isSelected) {
                              _filterCourses(label);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100.0,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 4.0),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 5.0),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 229, 165, 253),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ],
                            ),
                            child: QuoteApi(),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            primary: false,
                            itemCount: _founditems.length,
                            itemBuilder: (context, index) {
                              final course = _founditems[index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CoursePage(course: course),
                                    ),
                                  );
                                },
                                child: CourseCard(
                                  title: course['title'] as String,
                                  hours: course['hours'] as int,
                                  image: course['imageUrl'] as String,
                                  backgroundColor: index.isEven
                                      ? Color.fromRGBO(133, 199, 235, 1)
                                      : Color.fromRGBO(196, 247, 212, 1),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomSheet: NavigationMenubottom(),
    );
  }
}
