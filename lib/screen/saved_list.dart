import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viteach_learning_app/global_variables.dart';
import 'package:viteach_learning_app/screen/navigation_menubottom.dart';
import 'package:viteach_learning_app/utils/theme/custom_themes/text_themes.dart';
import 'package:viteach_learning_app/widgets/saved_provider.dart';

class SavedList extends StatelessWidget {
  const SavedList({super.key});

  @override
  Widget build(BuildContext context) {
    final fav = Provider.of<SavedProvider>(context).saved;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Saved List")),
      ),
      body: ListView.builder(
          itemCount: fav.length,
          itemBuilder: (context, index) {
            final favItem = fav[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(favItem['imageUrl'] as String),
                radius: 30.0,
              ),
              trailing: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: Text('Delete the Saved Book?',
                                style: VTextTheme.lightTextTheme.bodyLarge),
                            content: Text('Are you sure you want to delete?',
                                style: VTextTheme.lightTextTheme.bodyMedium),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Provider.of<SavedProvider>(context,
                                          listen: false)
                                      .deletefavourite(favItem);
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]);
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Color.fromARGB(255, 244, 40, 40),
                  )),
              title: Text(
                favItem['title'].toString(),
                style: VTextTheme.lightTextTheme.bodyLarge,
              ),
              subtitle: Text(
                'Subject: ${favItem['subjects']}',
                style: VTextTheme.lightTextTheme.bodyMedium,
              ),
            );
          }),
      bottomNavigationBar: NavigationMenubottom(),
    );
  }
}
