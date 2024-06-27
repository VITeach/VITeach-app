import 'package:flutter/material.dart';

class CourseNotFound extends StatelessWidget {
  const CourseNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Course not found')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:EdgeInsets.all(2.0),
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset("assets/images/course_not_found.jpg")),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 85.0, vertical: 20.0),
              child: Row(
                children: [
                  Icon(Icons.error_outline, size: 50.0),
                  Text(
                    'Course not found',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}