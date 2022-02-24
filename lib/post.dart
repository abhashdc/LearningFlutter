import 'package:flutter/material.dart';

class CustomPost extends StatelessWidget {
  String userName, caption, photo;
  CustomPost(
      {this.userName = 'abhash',
      this.caption = 'THis is caption',
      this.photo = 'black.jpg'});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450, //Fixed width
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.account_circle_rounded,
                        color: Colors.amber,
                        size: 26.0,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 4),
                      child: Text(userName), //setting username
                    ),
                  ],
                )),
                Container(
                  child: PopupMenuButton(
                    itemBuilder: (context) =>
                        [PopupMenuItem(child: Text("Option 1"))],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset('assets/images/$photo'),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  iconSize: 25,
                  color: Colors.black,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.mode_comment_outlined),
                  iconSize: 25,
                  color: Colors.black,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  iconSize: 25,
                  color: Colors.black,
                  onPressed: () {},
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.turned_in_not),
                        iconSize: 25,
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '677 likes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  userName, //setting username
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(caption), //setting capiton
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'View all comments',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
