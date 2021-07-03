import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/widget/app_bar_widget.dart';
import 'package:flutter_application_2/widget/video_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class SecondRecommendationScreen extends StatefulWidget {
  _SecondRecommendationScreen createState() => _SecondRecommendationScreen();
}

class _SecondRecommendationScreen extends State<SecondRecommendationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: CustomAppBar(),
              backgroundColor: mainBackground,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed("/detail/123456");
                    },
                    child: VideoWidget(
                      key: Key(toString()),
                    ),
                  );
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
