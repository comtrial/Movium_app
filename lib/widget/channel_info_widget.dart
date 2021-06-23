import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';

class Channel_Info extends StatelessWidget {
  const Channel_Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                alignment: Alignment.bottomLeft,
                child: Text(
                  '채널명 조회수 업로드 날짜',
                  style: TextStyle(color: mainWhite),
                ),
              ),
              Container(
                child: ButtonTheme(
                  minWidth: 1,
                  height: 30,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(
                        "채널 더보기",
                        style: TextStyle(
                            fontSize: 12,
                            color: mainWhite,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: mainPink,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(height: 3, width: 500, color: Colors.white30),
      ],
    );
  }
}
