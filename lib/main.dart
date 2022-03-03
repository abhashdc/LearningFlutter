import 'package:flutter/material.dart';

//Our files
import 'tabBar.dart';
import 'pageView.dart';

void main() => runApp(MaterialApp(home: MainScreen()));

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Wrap(
            //To make our two buttons responsive
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomTabBar()),
                  );
                },
                child: const Text('Click to experience Tab View'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomPageView()),
                  );
                },
                child: const Text('Click to experience Page View'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
