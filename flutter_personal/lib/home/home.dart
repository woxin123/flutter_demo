
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_personal/home/appbar.dart';
import 'package:flutter_personal/home/body.dart';

class PersonalHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: new Column(
        children: [
          new PersonalAppBar(),
          new PersonalAppBody(),
        ],
      )
    );

  }

}