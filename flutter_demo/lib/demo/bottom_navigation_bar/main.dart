import 'package:flutter/material.dart';

import 'bottom_navigation_wdiget.dart';


void main() => runApp(BottomBarApp());


class BottomBarApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottomNavigationBar',
      theme: ThemeData.light(),
      home: BottomNavigationWidget()
    );
  }
}
