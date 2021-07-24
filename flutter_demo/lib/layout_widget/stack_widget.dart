import 'package:flutter/material.dart';

void main() => runApp(StackWidgetDemoApp());

class StackWidgetDemoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      var stack = Stack(
        alignment: FractionalOffset(0.5, 0.8),
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage("https://upload.jianshu.io/users/upload_avatars/12538114/b86b474b-1db7-4c06-a725-540147479f6c?imageMogr2/auto-orient/strip|imageView2/1/w/80/h/80/format/webp"),
            radius: 100.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            padding: EdgeInsets.all(5.0),
            child: Text("Me"),
          )
        ],
      );
      return MaterialApp(
        title: "Stack Widget Demo",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Stack Widget Demo"),
          ),
          body: Center(
            child: stack,
          )
        ),
      );
  }
}