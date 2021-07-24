import 'package:flutter/material.dart';

import 'bottom_app_bar_demo.dart';

void main() => runApp(IrregularBottomApp());

class IrregularBottomApp extends StatelessWidget {
  const IrregularBottomApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Irregular Bottom Navigation Bar",
      // 自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: IrregularBottomAppBarDemo(),
    );
  }
}
