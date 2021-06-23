import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/screen/channel_info_screen.dart';
import 'package:flutter_application_2/screen/home_screen.dart';
import 'package:flutter_application_2/screen/play_screen.dart';
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
        theme: ThemeData(
          primaryColor: mainBackground,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => HomeScreen()),
          GetPage(name: '/detail/:videoid', page: () => PlayScreen()),
          GetPage(
              name: '/channel_info/:channelid',
              page: () => ChannelInformationScreen())
        ],
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            backgroundColor: mainBackground,
            body: TabBarView(
              //스크롤로 탭 간 전환 방지
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                HomeScreen(),
                PlayScreen(),
                Container(),
                Container()
              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ));
  }
}
