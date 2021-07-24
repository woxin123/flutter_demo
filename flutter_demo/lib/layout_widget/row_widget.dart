import 'package:flutter/material.dart';

void main() => runApp(RowWidgetDemoApp());

class RowWidgetDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row Widget Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("水平方向布局"),
        ),
        body: Row(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              child: Text("按钮"),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink)),
                child: Text("按钮"),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),
              child: Text("按钮"),
            ),
          ],
        ),
      ),
    );
  }
}
