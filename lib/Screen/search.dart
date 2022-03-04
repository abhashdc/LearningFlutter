import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 3,
              // to disable GridView's scrolling otherwise screen wont scroll
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true, // To avoid overflow
              // crossAxisSpacing: 4.0,
              // mainAxisSpacing: 8.0,
              children: [
                Image.network('https://picsum.photos/210/200'),
                Image.network('https://picsum.photos/220/300'),
                Image.network('https://picsum.photos/230/300'),
                Image.network('https://picsum.photos/240/300'),
                Image.network('https://picsum.photos/250/300'),
                Image.network('https://picsum.photos/200/330'),
                Image.network('https://picsum.photos/200/340'),
                Image.network('https://picsum.photos/200/350'),
                Image.network('https://picsum.photos/200/360'),
                Image.network('https://picsum.photos/200/270'),
                Image.network('https://picsum.photos/200/380'),
                Image.network('https://picsum.photos/200/390'),
                Image.network('https://picsum.photos/201/300'),
                Image.network('https://picsum.photos/202/300'),
                Image.network('https://picsum.photos/203/300'),
                Image.network('https://picsum.photos/204/300'),
                Image.network('https://picsum.photos/205/300'),
                Image.network('https://picsum.photos/206/300'),
                Image.network('https://picsum.photos/207/210'),
                Image.network('https://picsum.photos/208/300'),
                Image.network('https://picsum.photos/209/300'),
                Image.network('https://picsum.photos/210/303'),
                Image.network('https://picsum.photos/212/220'),
                Image.network('https://picsum.photos/213/300'),
                Image.network('https://picsum.photos/214/300'),
                Image.network('https://picsum.photos/215/300'),
                Image.network('https://picsum.photos/216/300'),
                Image.network('https://picsum.photos/217/300'),
                Image.network('https://picsum.photos/218/300'),
                Image.network('https://picsum.photos/219/300'),
              ],
            )
          ],
        ),
      );
}
