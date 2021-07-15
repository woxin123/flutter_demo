import 'package:flutter/material.dart';

class ContainerTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container Widget",
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text("Hello Container",
              style: TextStyle(fontSize: 40.0),
            ),
            alignment: Alignment.topLeft,
            width: 500.0,
            height: 400.0,
            padding: EdgeInsets.fromLTRB(10.0, 100.0, 0.0, 0.0),
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple]
              ),
              border: Border.all(width: 2.0, color: Colors.red)
            ),
          ),
        ),
      ),
    );
  }
}