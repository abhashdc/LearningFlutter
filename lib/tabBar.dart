import 'package:flutter/material.dart';

//Files to import list and grid screens
import 'listView.dart';
import 'gridView.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int indexOfTab = DefaultTabController.of(context)!.index;

    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: const Text('Make tab bar indicator dynamic'),
            bottom: TabBar(
              onTap: (index) {},
              indicatorColor: Colors.orangeAccent,
              automaticIndicatorColorAdjustment: true,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.list,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.apps,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CustomListView(), //calls the list view
              CustomGridView(), //calls the grid view
            ],
          ),
        ),
      ),
    );
  }
}
