import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/widget/app_bar_widget.dart';
import 'package:flutter_application_2/widget/channel_info_widget.dart';
import 'package:flutter_application_2/widget/movie_info_widget.dart';
import 'package:flutter_application_2/widget/player_widget.dart';
import 'package:flutter_application_2/widget/recommend_widget/swipe_bar_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class FirstRecommendationScreen extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
        backgroundColor: mainBackground,
      ),
      backgroundColor: mainBackground,
      body: PageView.builder(
          controller: PageController(initialPage: 1),
          itemCount: 10,
          scrollDirection: Axis.vertical,
          scrollBehavior: ScrollBehavior(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  PlayVideo(),
                  Channel_Info(),
                  Movie_Info(key: Key(toString())),
                  SwipeBar(),
                ],
              ),
            );
          }
          // children: [
          //   PlayVideo(),
          //   Channel_Info(key: Key(toString())),
          //   Movie_Info(key: Key(toString())),
          //   SwipeBar(),
          //   NonPlayVideo(),
          //   Channel_Info(key: Key(toString())),
          //   Movie_Info(key: Key(toString()))
          // ],
          ),
    );
  }
}
