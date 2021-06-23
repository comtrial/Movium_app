import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:get/get.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({required Key key}) : super(key: key);

  Widget _thumbnail() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      height: 240,
      width: 400,
      decoration: BoxDecoration(
        color: mainBackground,
        image: DecorationImage(
            image: Image.network(
                    'https://i.pinimg.com/originals/86/ec/51/86ec51c589d572db18481beddfc8188a.jpg')
                .image,
            fit: BoxFit.cover),
      ),
    );
  }

  Widget _simpleDetailinfo() {
    return Container(
      color: mainBackground,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: mainBackground,
            backgroundImage: Image.network(
                    'https://pbs.twimg.com/profile_images/600556005462650881/BQr5YI4D_400x400.jpg')
                .image,
          ),
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
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                        alignment: Alignment.topCenter,
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          size: 18,
                        ))
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "하위하윙",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Text(" . "),
                    Text(
                      "조회수",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Text(" . "),
                    Text(
                      "2021-02-05",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
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
    final med = MediaQuery.of(context);
    return Container(
      width: med.size.width,
      decoration: BoxDecoration(color: Colors.grey, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          offset: Offset(0, 2), // changes position of shadow
        ),
      ]),
      child: Column(
        children: [
          SizedBox(
            height: 0,
            width: 0,
          ),
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
  int uploaddate;
  Movie({
    this.name = "해리포터",
    this.count = 400,
    this.uploaddate = 20210623,
  });
}
