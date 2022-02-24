import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  // String customLabel, customIcon;

  // CustomBottomNavigation({this.customLabel = 'Home', this.customIcon = 'home'});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false, //Disable showing labels
      showUnselectedLabels: false, //Disable showing labels
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          label: 'Add',
          icon: Icon(
            Icons.add_box_outlined,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          label: 'Shop',
          icon: Icon(
            Icons.local_mall_outlined,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Icon(
            Icons.account_circle,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        )
      ],
    );
  }
}
