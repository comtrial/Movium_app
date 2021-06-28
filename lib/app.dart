import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:get/get.dart';
import 'controller/app_controller.dart';
import 'screen/home_screen.dart';


class App extends GetView<AppController> {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (RouteName.values[controller.currentIndex.value]) {
          case RouteName.Home:
            return HomeScreen();
            break;
          case RouteName.Explore:
            return Container();
            break;
          case RouteName.Notification:
            return Container();
            break;
          case RouteName.Setting:
            return Container();
            break;
        }
        return Container();
      }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex.value,
          showSelectedLabels: true,
          selectedItemColor: mainPink,
          onTap: controller.changePageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
              Icons.home,
              size: 23,
              color: Colors.white,
              ),
              activeIcon: Icon(
              Icons.home,
              size: 23,
              color: mainPink,
              ),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(
              Icons.search,
              size: 23,
              color: Colors.white,
              ),
              activeIcon: Icon(
              Icons.search,
              size: 23,
              color: mainPink,
              ),
              label: "Search"
            ),
            BottomNavigationBarItem(
              icon: Icon(
              Icons.notifications,
              size: 23,
              color: Colors.white,
              ),
              activeIcon: Icon(
              Icons.notifications,
              size: 23,
              color: mainPink,
              ),
              label: "Notifications"
            ),
            BottomNavigationBarItem(
              icon: Icon(
              Icons.settings,
              size: 23,
              color: Colors.white,
              ),
              activeIcon: Icon(
              Icons.settings,
              size: 23,
              color: mainPink,
              ),
              label: "Setting"
            ),
          ],
        ),
      ),
    );
  }
}
