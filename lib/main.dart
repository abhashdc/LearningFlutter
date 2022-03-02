import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MainScreen()));

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // int indexOfTab = DefaultTabController.of(context)!.index;
    int indexOfTab = 1;
    List<Color> listOfColors = [
      Colors.indigo,
      Colors.lightGreen,
      Colors.redAccent
    ];
    return MaterialApp(
        home: DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Make tab bar indicator dynamic'),
          bottom: TabBar(
            onTap: (index) {
              setState(
                () {
                  indexOfTab = index;
                  // print(indexOfTab);
                },
              );
            },
            indicatorColor: listOfColors[indexOfTab],
            unselectedLabelColor: Colors.red,
            // indicator: UnderlineTabIndicator(
            //   borderSide: BorderSide(
            //     color: Colors.red,
            //   ),
            // ),
            automaticIndicatorColorAdjustment: true,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.directions_car,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.directions_transit,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.directions_bike,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(
              Icons.directions_car,
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    ));
  }
}
