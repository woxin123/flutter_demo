import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "页面跳转返回数据",
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("找小姐姐要电话"),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}


class RouteButton extends StatelessWidget {
  const RouteButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _navigationToXiaoJieJie(context );
        },
        child: Text("去找小姐姐")
    );
  }

  _navigationToXiaoJieJie(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => XiaoJieJie()));
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("$result")));
  }
}

class XiaoJieJie extends StatelessWidget {
  const XiaoJieJie({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是小姐姐"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "大长腿小姐姐, 123132322322");
                }, child: Text("大长腿小姐姐"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, "小蛮腰小姐姐, 123132322788");
              }, child: Text("大长腿小姐姐"),
            )
          ],
        ),
      ),
    );
  }
}