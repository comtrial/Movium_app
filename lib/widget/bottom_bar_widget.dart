import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
// custom 스타일 import

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainBackground,
      child: Container(
        height: 70,
        child: TabBar(
          labelColor: Colors.black87,
          unselectedLabelColor: downDark,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
                icon: Icon(
              Icons.home,
              size: 23,
              color: Colors.white,
            )),
            Tab(
                icon: Icon(
              Icons.search,
              size: 23,
              color: Colors.white,
            )),
            Tab(
                icon: Icon(
              Icons.notifications,
              size: 23,
              color: Colors.white,
            )),
            Tab(
                icon: Icon(
              Icons.settings,
              size: 23,
              color: Colors.white,
            )),
          ],
        ),
      ),
    );
  }
}
