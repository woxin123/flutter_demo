import 'package:flutter/material.dart';

class GridViewTestApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "Welcome to Flutter",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Grid View"),
          ),
          body: GridView.count(
            padding: EdgeInsets.all(20.0),
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 2.0,
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            children: <Widget>[
              Image.network("https://img2.baidu.com/it/u=424738024,2180164198&fm=26&fmt=auto&gp=0.jpg")
            ],
          )
        )
    );
  }
}
