import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image Widget",
      home: Scaffold(
        body: Center(
          child: Container(
            child: Image.network(
              "https://www.baidu.com/img/flexible/logo/pc/result.png",
              color: Colors.green,
              colorBlendMode: BlendMode.modulate,
              fit: BoxFit.scaleDown,
              repeat: ImageRepeat.repeatY,
            ),
            width: 300.0,
            height: 200.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
