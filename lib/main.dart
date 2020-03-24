import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        // leading: Icon(Icons.home),
        title: Text("Flutter"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.supervised_user_circle),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            FlutterLogo(
              style: FlutterLogoStyle.markOnly,
              size: 100,
            ),
            Text(
              "Flutter Beginners",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Flutter Classroom Beginners",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      size: 50,
                    ),
                    Text("Home")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      size: 50,
                    ),
                    Text("Favorite")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.settings,
                      size: 50,
                    ),
                    Text("Settings")
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue[800],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
