import 'package:flutter/material.dart';

void main() => runApp(CustomAlertDialog());

class CustomAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: AlertDialog(
        title: Text('An example of alert'),
        content: Text('This is the main body'),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Get it?'),
          )
        ],
      ),
    ));
  }
}
