import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "导航演示",
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("see product detail"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SecondScreen()
            ));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product detail"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Back"),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
    );
  }
}