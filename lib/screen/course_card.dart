import 'package:flutter/material.dart';
import 'package:viteach_learning_app/utils/constants/text_strings.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/text_themes.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final int hours;
  final String image;
  final Color backgroundColor;
  const CourseCard(
      {super.key,
      required this.title,
      required this.hours,
      required this.image,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(12.0),
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: VTextTheme.lightTextTheme.bodyLarge),
            const SizedBox(height: 5),
            Text('$hours hours', style: VTextTheme.lightTextTheme.bodyMedium),
            const SizedBox(height: 5),
            Center(child: Image.asset(image, height: 175)),
          ],
        ));
  }
}
