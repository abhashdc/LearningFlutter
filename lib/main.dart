import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(Instagram());

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Instagram',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      // decoration: BoxDecoration(color: Colors.green),
                      child: IconButton(
                        icon: Icon(Icons.favorite_border),
                        iconSize: 25,
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      // decoration: BoxDecoration(color: Colors.red),
                      child: Icon(
                        Icons.chat_outlined,
                        color: Colors.black,
                        size: 25.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.account_circle_rounded,
                      color: Colors.amber,
                      size: 26.0,
                    ),
                    Text('abhash'),
                    Container(
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                        size: 26.0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
        ),
      ),
    );
  }
}
