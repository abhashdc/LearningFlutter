import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
import 'post.dart';

void main() => runApp(Instagram());

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '  Instagram',
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
                    style: TextStyle(fontSize: 30, fontFamily: 'Billabong'),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: IconButton(
                        icon: Icon(Icons.favorite_border),
                        iconSize: 25,
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
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
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            CustomPost(
              userName: 'rajesh',
              caption: 'Rajesh Jiraya in Mobile Legends',
              photo: 'meme.jpg',
            ),
            CustomPost(
              userName: 'abhash',
              caption: 'Black clover is back!',
              photo: 'black.jpg',
            ),
            CustomPost(
              userName: 'watchtower',
              caption: 'Check out this beautiful wallpaper',
              photo: 'wallpaper.jpg',
            ),
            CustomPost(
              userName: 'suman',
              caption: 'I love flutter renta',
              photo: 'flutter.jpg',
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigation(),
      ),
    );
  }
}
