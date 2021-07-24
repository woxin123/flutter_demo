import 'package:flutter/material.dart';

void main() => runApp(ColumnWidgetDemoApp());

class ColumnWidgetDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Column Widget Demo",
      home: Scaffold(
        appBar: AppBar(
          title: Text("垂直方向布局"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("不知道写点什么"),
              Expanded(
                child: Text("所以就在瞎写"),
              ),
              Text("再瞎写一点")
            ],
          ),
        ),
      ),
    );
  }
}
