import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upload camera'),
      ),
      body: Container(
          child: Center(
        child: Text('I will add a camera here in future'),
      )),
    );
  }
}
