import 'package:flutter/material.dart';

//To make a list of model data we are importing a model class
import 'modal.dart';

class CustomListView extends StatelessWidget {
  //This is just a list of data for our list
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
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Color.fromARGB(255, 67, 213, 233),
              child: Row(
                children: [
                  Image.network(
                    entries[index].imageUrl,
                    fit: BoxFit.contain,
                    height: 180.0,
                    width: 150.0,
                  ),
                  Text(
                    '${entries[index].imageTitle.toString()}',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Price: ${entries[index].price.toString()}',
                    textAlign: TextAlign.end,
                  )
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
