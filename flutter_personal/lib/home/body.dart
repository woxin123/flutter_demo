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
          SizedBox(height: 20.0,),
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
            height: 4009.0,
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
    final cardName = {"文章", "日记", "评论"};
    final cardCount = {201, 108, 1915};
    final iconList = [
      "images/github.png",
      "images/github.png",
      "images/github.png"
    ];
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius)),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text("一个很懒的程序员"),
              ),
              Row(
                children: cardName
                    .map(
                      (e) => Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                "201",
                                style: TextStyle(
                                  color: Color(0xFF00a1d6),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Text(
                              e,
                              style: TextStyle(),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: iconList
                    .map((e) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.0),
                        child: Image(
                            width: 24.0, height: 24.0, image: AssetImage(e))))
                    .toList(),
              ),
              SizedBox(height: 10.0,)
            ],
          ),
          Positioned(
            top: 90.0,
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
