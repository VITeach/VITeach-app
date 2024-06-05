import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:viteach_learning_app/screen/saved_list.dart';
import 'package:viteach_learning_app/widgets/saved_provider.dart';

class CoursePage extends StatefulWidget {
  final Map<String, Object> course;
  const CoursePage({super.key, required this.course});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  bool click =false;
  void onTap() {
    Provider.of<SavedProvider>(context, listen: false).addfavourite(
      {
        'id': widget.course['id'],
        'title': widget.course['title'],
        'hours': widget.course['hours'],
        'subjects': widget.course['subjects'],
        'imageUrl': widget.course['imageUrl'],
        'typemat': widget.course['typemat'],
      },
    );
    setState(() {
      click =!click;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.course['title'] as String),
          actions: [
            IconButton(
              onPressed: onTap,
              icon: Icon((click==false ? Iconsax.save_add: Iconsax.save_21)),
            ),
          ],
        ),
        body: SfPdfViewer.asset("assets/Nouns.pdf"));
  }
}
