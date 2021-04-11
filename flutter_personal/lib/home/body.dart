import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalAppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = "asnfckljasnbcasklcnbsakljcnsalkcnscasc";
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Container(
        constraints: BoxConstraints(
          minWidth: double.infinity,
        ),
        width: MediaQuery.of(context).size.width,
        // child: Stack(
        //   alignment: Alignment.topCenter,
        //   children: [
        //     Positioned(
        //         child: _center(context),
        //     )
        //   ],
        child: Center(
          child: new Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: _left(context),
                  flex: 1,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Center(child: _center(context)),
                  flex: 3,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: _right(),
                  flex: 1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _left(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _personalMessage(),
          Container(
            height: 200.0,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
          )
        ],
      ),
    );
  }

  Widget _right() {
    return Container(
      height: 500.0,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
    );
  }

  Widget _center(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 1009.0,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget _personalMessage() {
    final double borderRadius = 5.0;
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(borderRadius), topRight: Radius.circular(borderRadius)),
                child: Image(
                  height: 130.0,
                  width: double.infinity,
                  fit: BoxFit.none,
                  alignment: Alignment.center,
                  image: AssetImage("images/personal_message_area.png"),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text("一个很懒的程序员"),
            ],
          ),
          Positioned(
            top: 80.0,
            child: CircleAvatar(
              backgroundImage: AssetImage("images/touxiang.jpg"),
              radius: 40.0,
            ),
          )
        ],
      ),
    );
  }
}
