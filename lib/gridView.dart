import 'package:flutter/material.dart';
//To make a list of model data we are importing a model class
import 'modal.dart';

class CustomGridView extends StatelessWidget {
  //This is just a list of data for our grid
  final List<Modal> entries = <Modal>[
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
    Modal(
        imageTitle: 'A sample Image',
        price: 100,
        imageUrl: 'https://picsum.photos/200/300/?blur'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          primary: false,
          padding: const EdgeInsets.all(20),
          itemCount: entries.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(color: Colors.deepOrangeAccent, spreadRadius: 3)
                  ]),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    //Expanded to avoid image overflow
                    child: Image.network(
                      entries[index].imageUrl,
                      fit: BoxFit.cover,
                      height: 180.0,
                    ),
                  ),
                  Text(
                    '${entries[index].imageTitle.toString()}',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Price: ${entries[index].price.toString()}',
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
