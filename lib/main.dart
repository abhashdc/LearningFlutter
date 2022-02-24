import 'package:flutter/material.dart';

void main() => runApp(CustomWidget());

class CustomWidget extends StatelessWidget {
  List<String> listOfString = [
    "a",
    "b",
    "c",
    "d",
    "d",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('List'),
        ),
        body: ListView(
          children: [
            ListView.builder(
              //shrinkWrap: true,
              // physics: BouncingScrollPhysics(),
              itemCount: listOfString.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(listOfString[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DummyProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(
              child: Text('Entry A'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(
              child: Text('Entry B'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(
              child: Text('Entry C'),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal, //set the list as a row
      //reverse: true, //Shows bottom to up
      //addAutomaticKeepAlives: false, //To enable garbage control
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 500,
          // width: 1000,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 500,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 500,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
}
//scrollDirection: Axis.horizontal
