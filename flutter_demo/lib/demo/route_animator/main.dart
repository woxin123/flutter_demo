import 'package:flutter/material.dart';
import 'package:flutter_demo/demo/route_animator/pages.dart';

void main() => runApp(RouterAnimationApp());

class RouterAnimationApp extends StatelessWidget {
  const RouterAnimationApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Router Animation",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}
