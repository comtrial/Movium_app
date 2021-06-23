import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:get/get.dart';
import 'package:favorite_button/favorite_button.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key key}) : super(key: key);

  Widget _thumbnail() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      height: 270,
      width: 500,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: Image.network(
                    'https://img1.daumcdn.net/thumb/R1280x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/1j7Y/image/pVsFi73pS3XCKTxQYInv9i2D4Uw.jpg')
                .image,
            fit: BoxFit.cover),
      ),
    );
  }

  Widget _simpleDetailinfo() {
    return Container(
      color: mainBackground,
      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
      padding: const EdgeInsets.only(left: 10, bottom: 5),
      child: Row(
        children: [
          SizedBox(width: 0),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        ("${Movie().name}"),
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "조회수 : ${(Movie().count)}만",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Text("  "),
                    FavoriteButton(
                      iconSize: 30,
                      isFavorite: false,
                      iconDisabledColor: Colors.white,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                    Text(
                      " ${(Movie().likecount)}천",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonTheme(
                      minWidth: 1,
                      height: 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: RaisedButton(
                        onPressed: () {
                          Get.toNamed("/channel_info/12345678");
                        },
                        child: Container(
                          child: Text(
                            "채널 정보",
                            style: TextStyle(
                                fontSize: 12,
                                color: mainWhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: mainPink,
                      ),
                    ),
                    // SizedBox(width: 126),
                    Row(
                      children: [
                        Text(
                          "감상 가능한 서비스",
                          style: TextStyle(
                            fontSize: 12,
                            color: mainWhite,
                          ),
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              Image.network(Movie().OTTimage[0]).image,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              Image.network(Movie().OTTimage[1]).image,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: mainBackground, boxShadow: [
        BoxShadow(
          color: mainBackground,
          offset: Offset(0, 2), // changes position of shadow
        ),
      ]),
      child: Column(
        children: [
          _thumbnail(),
          _simpleDetailinfo(),
        ],
      ),
    );
  }
}

class Movie {
  String name;
  int count;
  int likecount;
  // ignore: non_constant_identifier_names
  var OTTimage = [
    'https://yt3.ggpht.com/ytc/AAUvwniTcMUuinsOROuiKYmf18zwT9gmixKbxHIWcgN1=s900-c-k-c0x00ffffff-no-rj',
    'https://image.rocketpunch.com/company/126/watcha_logo_1611108610.png?s=400x400&t=inside'
  ];
  Movie({
    this.name = "해리포터 시리즈 첫 번째 이야기 1분 (해리포터와 마법사의 돌)",
    this.count = 400,
    this.likecount = 2,
    // ignore: non_constant_identifier_names
  });
}
