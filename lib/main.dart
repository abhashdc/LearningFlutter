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
                    style:
                        TextStyle(fontSize: 25, backgroundColor: Colors.blue),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(color: Colors.green),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 26.0,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.red),
                      child: Icon(
                        Icons.chat_outlined,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Column(
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
    );
  }
}
