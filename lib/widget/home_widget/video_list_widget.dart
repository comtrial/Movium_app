import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/widget/home_widget/video_item_widget%20copy.dart';
import 'package:flutter_application_2/widget/home_widget/video_item_widget.dart';
import 'package:get/get.dart';
import 'package:favorite_button/favorite_button.dart';


class VideolListView extends StatelessWidget {
  const VideolListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
              onTap: (){
                //  Get.toNamed("/detail/123456");
              },// list 상단바 클릭시 event
              child: Row(
                children: [
                  Container(
                width:150,
                height: 30,
                alignment: Alignment.centerLeft,
                child: Text(
                  '실시간 급상승 영상',
                  style: kHomeTitleStyle,
                ),
              ),
             ]
            ),
        ),
        Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      height: 225,
      decoration: new BoxDecoration(
        color: mainBackground
      ),
      child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        VideoItem(),
        VideoItem2(),
        Container(
          width:225,
          height:125,
          color: Colors.white
        )
      ],
    ),
    ),
    SizedBox(
      height:44
    )
      ],
    );
  } 
}
