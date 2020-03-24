import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("img/fredy.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "Fredy Nur Apriyanto",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Politeknik Harapan Bersama",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 15.0,
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
              height: 15.0,
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              width: 400,
              height: 230,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  FlutterLogo(
                    style: FlutterLogoStyle.markOnly,
                    size: 100,
                  ),
                  Text(
                    "Flutter",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(height: 5),
            Text("Flutter Classroom Beginners"),
          ],
        ),
      ),
    );
  }
}
