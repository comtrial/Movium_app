
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/model/home_model/home_video_item.dart';
import 'package:get/get.dart';


class VideoItemWidget extends StatelessWidget{

  final VideoItem videoitem;
  const VideoItemWidget({ Key key, this.videoitem }) : super(key: key);

  //??이거 맞나
  get videoThumbnail => null;
  get videoTitle => null;

  Widget _thumnail() {
    return Container(
      height: 125,
      width: 225,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.network(
                    "${videoitem.videoThumbnail}")
                    .image,
          fit: BoxFit.cover),
        )
      );
  }

  Widget _videoTitle(){
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Expanded(
        child: Text(
        '${videoitem.videoTitle}',maxLines: 2,
        style: kHomeContentStyle,
        overflow: TextOverflow.ellipsis,
      )
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Get.toNamed("/detail/123456");
        },
        child:Container(
      width: 225,
      height: 125,
      margin: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          _thumnail(),
          _videoTitle()
        ]
      ),
        )
    );
  }
}


//dummy data
class Movie {
  String name;
  String thumnail;

  Movie({

    this.name = "해리포터 시리즈 첫 번째 이야기 1분 (해리포터와 마법사의 돌)",
    this.thumnail = "https://img1.daumcdn.net/thumb/R1280x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/1j7Y/image/pVsFi73pS3XCKTxQYInv9i2D4Uw.jpg"

  });
}
