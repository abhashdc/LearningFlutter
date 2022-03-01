import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MainScreen()));

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomListView()),
                  );
                },
                child: Text('Click to see List View'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CustomGridView()),
                  );
                },
                child: Text('Click to see Grid View'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({Key? key, required this.item}) : super(key: key);
  Item item;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(48), // Image radius
              child: Image.network(item.networkImageUrl, fit: BoxFit.fill),
            ),
          ),
          Text("Name: ${item.name}"),
          Text("Quantity: ${item.quantity}"),
          Text("Price: ${item.price}"),
        ],
      ),
    );
  }
}

class Item {
  //Modal class
  String networkImageUrl, name;
  int quantity;
  double price;

  Item(
      {required this.networkImageUrl,
      required this.name,
      required this.quantity,
      required this.price});
}

class CustomListView extends StatelessWidget {
  final List<Item> listOfItems = [
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Thats the list view'),
      ),
      body: Container(
        width: deviceWidth,
        //color: Colors.purpleAccent,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: listOfItems.length,
            padding: EdgeInsets.all(deviceWidth * 0.1),
            itemBuilder: (context, index) {
              return CustomCard(item: listOfItems[index]);
            }),
      ),
    );
  }
}

class CustomGridView extends StatelessWidget {
  final List<Item> listOfItems = [
    Item(
      name: 'Profile NFT',
      networkImageUrl:
          'https://media.istockphoto.com/photos/patan-picture-id637696304?k=20&m=637696304&s=612x612&w=0&h=GqmMtggU2LgHWcXPFNxMrZg9dtPzyrnl9ek5oARcI7Y=',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl:
          'https://media.istockphoto.com/photos/patan-picture-id637696304?k=20&m=637696304&s=612x612&w=0&h=GqmMtggU2LgHWcXPFNxMrZg9dtPzyrnl9ek5oARcI7Y=',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl:
          'https://media.istockphoto.com/photos/patan-picture-id637696304?k=20&m=637696304&s=612x612&w=0&h=GqmMtggU2LgHWcXPFNxMrZg9dtPzyrnl9ek5oARcI7Y=',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
    Item(
      name: 'Profile NFT',
      networkImageUrl: 'https://picsum.photos/200/300?grayscale',
      price: 2,
      quantity: 2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is grid view'),
      ),
      body: Center(
        child: Container(
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: listOfItems.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return CustomCard(item: listOfItems[index]);
            },
          ),
        ),
      ),
    );
  }
}
