import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        color: Colors.lime,
        child: Row(
          
          children: [
            Expanded(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
