import 'package:flutter/material.dart';

Widget createDynamicListViewTestApp() {
  return DynamicListViewTestApp(
      items: List<String>.generate(1000, (index) => "Item $index"));
}

class DynamicListViewTestApp extends StatelessWidget {

  final List<String> items;

  DynamicListViewTestApp({Key key, @required this.items}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Welcome to Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Welcome to Flutter"),
            ),
            body: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${items[index]}"),
                  );
                }
            )
        )
    );
  }

}