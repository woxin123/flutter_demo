import 'package:flutter/material.dart';

void main() => runApp(PositionedWidgetDemoApp());

class PositionedWidgetDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://upload.jianshu.io/users/upload_avatars/12538114/b86b474b-1db7-4c06-a725-540147479f6c?imageMogr2/auto-orient/strip|imageView2/1/w/80/h/80/format/webp"),
          radius: 100.0,
        ),
        Positioned(
          top: 10.0,
          left: 10.0,
          child: Text("me.com"),
        ),
        Positioned(
          bottom: 10.0,
          right: 10.0,
          child: Text("Me"),
        )
      ],
    );
    return MaterialApp(
      title: "Positioned Widget Demo",
      home: Scaffold(
          appBar: AppBar(
            title: Text("Positioned Widget Demo"),
          ),
          body: Center(
            child: stack,
          )),
    );
  }
}
