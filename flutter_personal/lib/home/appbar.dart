import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 155.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/header.png"),
            fit: BoxFit.fitWidth,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.darken),
            // 加一点颜色过滤，让背景图片变淡一点
            alignment: Alignment.topLeft),
      ),
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Positioned(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _navigationItem("images/home.png", "主页"),
                SizedBox(width: 10.0),
                _navigationItem("images/personal_navigation.png", "个人导航"),
                SizedBox(width: 10.0),
                _navigationItem("images/document.png", "文档系统"),
                // _navigationItem(SvgPicture.asset("images/personnavigation.svg", color: Colors.grey), "个人导航")
              ],
            ),
            left: 24.0,
            top: 10.0,
          ),
          Center(
            heightFactor: 1.4,
            child: _searchBar(),
          )
        ],
      ),
    );
  }

  Widget _navigationItem(String imageSrc, String label) {
    // return Container(
    //   padding: EdgeInsets.all(0.0),
    //
    // );
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageSrc,
          fit: BoxFit.cover,
          width: 15.0,
          height: 15.0,
          color: Colors.red[300],
        ),
        new Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 12.0, shadows: [
            Shadow(
                offset: Offset(0.0, 1.0),
                blurRadius: 1.0,
                color: Colors.grey[900]), // 加一点阴影
          ]),
        ),
      ],
    );
  }

  Widget _searchBar() {
    return Container(
        width: 300.0,
        height: 43.0,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.transparent)),
            contentPadding:
                EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
            suffixIcon: Icon(Icons.search),
          ),
        ));
  }
}
