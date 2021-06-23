import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/screen/home_screen.dart';
import 'package:flutter_application_2/widget/bottom_bar_widget.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TabController controller;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Movium',
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: mainBackground,
            body: TabBarView(
              //스크롤로 탭 간 전환 방지
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                Container(),
                Container(),
                Container()
              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ));
  }
}
