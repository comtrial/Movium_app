import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/model/home_model/home_video_group.dart';
import 'package:flutter_application_2/model/home_model/home_video_item.dart';
import 'package:flutter_application_2/model/home_model/home_video_list.dart';
import 'package:flutter_application_2/widget/home_widget/video_item_widget%20copy.dart';
import 'package:flutter_application_2/widget/home_widget/video_item_widget.dart';
import 'package:get/get.dart';
import 'package:favorite_button/favorite_button.dart';


class VideolListView extends StatelessWidget {

  final VideoList videoList;
  //final VideoList videolist;
  const VideolListView({Key key, this.videoList }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
              onTap: (){
                Get.toNamed("/detail/123456");
              },// list 상단바 클릭시 event
              child: Row(
                children: [
                  SizedBox(
                      width:14
                    ),
                  Container(
                width:150,
                height: 30,
                alignment: Alignment.centerLeft,
                child: Text(
                  videoList.category,
                  style: kHomeTitleStyle,
                ),
              ),
             ]
            ),
        ),
        Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      height: 240,
      decoration: new BoxDecoration(
        color: mainBackground
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(14),
        itemCount: videoList.items.length,
        itemBuilder: (BuildContext context, int index) {
          return VideoItemWidget( videoitem:  videoList.items[index] );
        //   Container(
        //     width: 50,
        //     height: 50,
        //     color: Colors.pink
        //   );
        }
      )
      
    //   Obx(() =>
    //   ListView(
    //   scrollDirection: Axis.horizontal,
    //   children: <Widget>[
    //     SizedBox(
    //       width:14
    //     ),
    //     //videoItem 넘겨받ㅇ아
    //     VideoItem(
    //       videoitem: videoItem
    //       ),
    //     VideoItem2(),
    //     Container(
    //       width:225,
    //       height:125,
    //       color: Colors.white
    //     )
    //   ],
    // ),
    // ),)
    
    
    // ,
    // SizedBox(
    //   height:44
    )
       ],
    );
  } 
}
