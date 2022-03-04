import 'package:flutter/material.dart';
import 'Screen/home.dart';
import 'Screen/search.dart';
import 'Screen/add.dart';
import 'Screen/shop.dart';
import 'Screen/profile.dart';

void main() => runApp(const Instagram());

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  int currentIndexValue = 0;

  final List screen = [
    //A list of screens to display on tap of navbar
    const Home(),
    const Search(), //Added new features
    const Add(),
    const Shop(), //Added new features
    const Profile()
  ];
  void onItemTapped(int index) {
    setState(() {
      currentIndexValue = index;
    });
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        //Using the arrow because we are returning a single line of code and it looks cleaner
        title: '  Instagram',
        home: Scaffold(
          //Safearea to avoid notches and other obstractions
          body: SafeArea(child: screen[currentIndexValue]),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor:
                Colors.black, //Pick color of selected navbar item
            unselectedItemColor:
                Colors.black45, //set color of selected navbar item

            currentIndex: currentIndexValue,
            showSelectedLabels: false, //Disable showing labels
            showUnselectedLabels: false, //Disable showing labels
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(
                  Icons.search,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Add',
                icon: Icon(
                  Icons.add_box_outlined,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Shop',
                icon: Icon(
                  Icons.local_mall_outlined,
                ),
              ),
              BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(
                  Icons.account_circle,
                ),
              )
            ],
            onTap: onItemTapped,
          ),
        ),
      );
}
