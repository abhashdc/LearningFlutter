import 'package:flutter/material.dart';
import 'package:internship/gridView.dart';
import 'package:internship/listView.dart';

class CustomPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            //This is the arrow button to go back
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('TabBar'),
        ),
        body: PageView(
          controller: controller,
          children: <Widget>[
            CustomListView(), //Calls a list view
            CustomGridView(), //Calls a grid view
          ],
        ),
      ),
    );
  }
}
