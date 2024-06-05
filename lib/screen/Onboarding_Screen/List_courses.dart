import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class ListCourse extends StatefulWidget {
  const ListCourse({Key? key}) : super(key: key);
  @override
  State<ListCourse> createState() => _ListCourseState();
}

class _ListCourseState extends State<ListCourse> {
  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: LiquidPullToRefresh(
        color: Colors.deepPurple,
        height: 300,
        backgroundColor: Colors.deepPurple[200],
        onRefresh: _handleRefresh,
        child: CustomScrollView(
          slivers: [
            // sliver app bar
            SliverAppBar(
              expandedHeight: 300,
              backgroundColor: Colors.deepPurple,
              leading: Icon(Icons.menu),
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Prepositions'),
                background: Container(color: Colors.deepPurple[700]),
              ),
            ),

            // sliver items 1
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20,
                  right: 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.deepPurple[400],
                    height: 150,
                  ),
                ),
              ),
            ),

            // sliver items 2
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20,
                  right: 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.deepPurple[400],
                    height: 150,
                  ),
                ),
              ),
            ),

            // sliver items 3
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20,
                  right: 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.deepPurple[400],
                    height: 150,
                  ),
                ),
              ),
            ),

            // sliver items 4
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20,
                  right: 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.deepPurple[400],
                    height: 150,
                  ),
                ),
              ),
            ),

            // sliver items 5
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20,
                  right: 20,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.deepPurple[400],
                    height: 150,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
