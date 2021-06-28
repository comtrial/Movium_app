import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/home_controller.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/widget/app_bar_widget.dart';
import 'package:flutter_application_2/widget/home_widget/Ganre_list_widget.dart';
import 'package:flutter_application_2/widget/home_widget/video_list_widget.dart';
import 'package:flutter_application_2/widget/video_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}): super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
        backgroundColor: mainBackground,
      ),
      backgroundColor: mainBackground,
      body: SafeArea(
        child:  CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Container(
                height: 50,
                color: mainBackground,
                //장르 list widget
                child: Ganre_list()
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 24)),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  //Home List 구성 Widget
                  return GestureDetector(
                    onTap: () {
                      // Get.toNamed("/detail/123456");
                    },
                    child: VideolListView(
                      key: Key(toString()),
                    ),
                  );
                },
                childCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
