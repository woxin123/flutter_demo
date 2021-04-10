import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalAppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        // child: Stack(
        //   alignment: Alignment.topCenter,
        //   children: [
        //     Positioned(
        //         child: _center(context),
        //     )
        //   ],
        child:
          Center(
            child: new Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: _left(),
                    flex: 1,
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Expanded(
                    child: Center(child: _center(context)),
                    flex: 2,
                  ),
                  SizedBox(
                    width: 30.0,
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

  Widget _left() {
    return Container(
      width: 100.0,
      height: 500.0,
      decoration: BoxDecoration(
        color: Colors.green,
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
    return Container(
      height: 600.0,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
    );
  }
}
