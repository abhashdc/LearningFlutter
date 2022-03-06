import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //To access the global key programatically
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          actions: <Widget>[Container()], //To hide the end drawer
        ),
        body: Center(
          child: const Text('Hi Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://eskipaper.com/images/fairy-tail-wallpaper-15.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    //To align the items to the left
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        //To create the circle avatar
                        radius: 40,
                        foregroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDf28EL35H0RocyAmYCduPGCEOfsyl7ET67g&usqp=CAU'),
                        backgroundColor: Colors
                            .white, //If the image is not available then background will be while and text natsu will be displayed
                        child: Text('Natsu'),
                      ),
                      Text(
                        'Natsu Dragneel',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'salamander@fairytail.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.money),
                title: Text("100 Year Quest"),
              ),
              ListTile(
                selected: true,
                selectedTileColor: Colors.lime,
                leading: Icon(Icons.mouse),
                title: const Text("Click mee"), //opens another drawer
                onTap: () => scaffoldKey.currentState!.openEndDrawer(),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://eskipaper.com/images/fairy-tail-wallpaper-15.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    //To align the items to the left
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        //To create the circle avatar
                        radius: 40,
                        foregroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDf28EL35H0RocyAmYCduPGCEOfsyl7ET67g&usqp=CAU'),
                        backgroundColor: Colors.white,
                        // child: const Text('Natsu'),
                      ),
                      Text(
                        'Natsu Dragneel',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'salamander@fairytail.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.label_important,
                  color: Colors.amberAccent,
                ),
                title: Text("100 Year Quest"),
              ),
              const ListTile(
                selected: true,
                selectedTileColor: Colors.redAccent,
                leading: Icon(
                  Icons.pan_tool,
                  color: Colors.black,
                ),
                title: Text("The End"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
