import 'package:flutter/material.dart';

void main() => runApp(ListViewTestApp());

class ListViewTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView Widget",
      home: Scaffold(
        appBar: AppBar(title: Text("ListView Widget"),),
        body: ListView(
          children: <Widget>[
            Image.network("https://upload.chinaz.com/2021/0628/6376046979427515603672506.png"),
            Image.network("https://upload.chinaz.com/2021/0628/6376046979427515603672506.png"),
            Image.network("https://upload.chinaz.com/2021/0628/6376046979427515603672506.png"),
            Image.network("https://upload.chinaz.com/2021/0628/6376046979427515603672506.png"),
          ],
        )
      ),
    );
  }

}