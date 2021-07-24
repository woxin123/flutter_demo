import 'package:flutter/material.dart';
import 'each_view.dart';

class IrregularBottomAppBarDemo extends StatefulWidget {
  const IrregularBottomAppBarDemo({Key key}) : super(key: key);

  @override
  _IrregularBottomAppBarDemoState createState() =>
      _IrregularBottomAppBarDemoState();
}

class _IrregularBottomAppBarDemoState extends State<IrregularBottomAppBarDemo> {
  List<Widget> _eachView;

  int _index = 0;

  @override
  void initState() {
    super.initState();
    _eachView = []..add(EachView("Home"))..add(EachView("AirPlay"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView("New Page");
          }));
        },
        tooltip: "提示",
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _index = 0;
                  });
                },
                icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
              icon: Icon(Icons.airplay),
            )
          ],
        ),
      ),
    );
  }
}
