import 'package:flutter/material.dart';

import '../post.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                  child: const Text(
                    'Instagram',
                    style: TextStyle(fontSize: 30, fontFamily: 'Billabong'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: IconButton(
                        icon: const Icon(Icons.favorite_border),
                        iconSize: 25,
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 10),
                      child: const Icon(
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
            CustomPost(
              userName: 'abhash',
              caption: 'Yup no edits *jk*',
              photo: 'abhash.jpg',
            ),
          ],
        ),
      );
}
