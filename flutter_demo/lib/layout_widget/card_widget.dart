import 'package:flutter/material.dart';
import 'package:flutter_demo/common_wdiget/container.dart';
import 'package:flutter_demo/common_wdiget/dynamic_list_view.dart';
import 'package:flutter_demo/common_wdiget/grid_view.dart';
import 'package:flutter_demo/common_wdiget/horizontal_list_view.dart';
import 'package:flutter_demo/common_wdiget/image_wdiget.dart';
import 'package:flutter_demo/common_wdiget/listview_widget.dart';

void main() => runApp(CardWidgetDemoApp());

class CardWidgetDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: [
          ListTile(
            title: Text(
              "太阳系火星xxx", style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text("祝融:213123213213"),
            leading: Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          Divider(),
          ListTile(
            title: Text(
              "太阳系水星xxx", style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text("共工:213123213213"),
            leading: Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          Divider(),
          ListTile(
            title: Text(
              "太阳系海王星xxx", style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: Text("某某某:213123213213"),
            leading: Icon(Icons.account_box, color: Colors.lightBlue),
          )
        ],
      ),
    );
    return MaterialApp(
        title: "Card Widget Demo",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Card Widget Demo"),
            ),
            body: card
        )
    );
  }
}