import 'package:flutter/material.dart';
import 'package:flutter_application_2/binding/init_binding.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/screen/channel_info_screen.dart';
import 'package:flutter_application_2/screen/home_screen.dart';
import 'package:flutter_application_2/screen/play_screen.dart';
import 'package:flutter_application_2/widget/bottom_bar_widget.dart';
import 'package:get/get.dart';

import 'controller/home_controller.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key key}) : super(key: key);
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
        // Data loading이 앱 초기에 home 관련 data loading 하는데 
        // 통신 시간 많이 잡아 먹을 거 같아서 
        // home 화면 진입시 binding 해주는 형식으로 바꾸든가 해야 할 듯
        initialBinding: InitBinding(),
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
