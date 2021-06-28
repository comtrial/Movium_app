
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';


class VideoItem2 extends StatelessWidget{

  Widget _thumnail() {
    return Container(
      height: 125,
      width: 225,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.network(
                    "https://i.ytimg.com/vi/UsFAtia6CA0/hqdefault.jpg")
                    .image,
          fit: BoxFit.cover),
        )
      );
  }

  Widget _videoTitle(){
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Text(
        '스타트업 개발자 브이로그 with Galaxy Note 2021 Ultra 뭐시기 뭐시기',
        style: kHomeContentStyle,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225,
      height: 125,
      child: Column(
        children: [
          _thumnail(),
          _videoTitle()
        ]
      ),

    );
  }
}