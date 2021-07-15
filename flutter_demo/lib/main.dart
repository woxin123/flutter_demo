import 'package:flutter/material.dart';
import 'package:flutter_demo/common_wdiget/container.dart';
import 'package:flutter_demo/common_wdiget/dynamic_list_view.dart';
import 'package:flutter_demo/common_wdiget/grid_view.dart';
import 'package:flutter_demo/common_wdiget/horizontal_list_view.dart';
import 'package:flutter_demo/common_wdiget/image_wdiget.dart';
import 'package:flutter_demo/common_wdiget/listview_widget.dart';

void main() => runApp(GridViewTestApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Flutter"),
        ),
        body: Center(
          child: Text(
            "Hello Widget, 我想让这些文字变成两行，我为此不停的打字，好辛苦呀，它终于到两行了",
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255, 255, 125, 125),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid
            ),
          ),
        ),
      )
    );
  }
}