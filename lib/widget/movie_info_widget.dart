import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';

class Movie_Info extends StatelessWidget {
  const Movie_Info({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            '영화정보',
            style: TextStyle(
              color: mainWhite,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: 270,
                  child: Text(
                    '해리포터-마법사의 돌을 차지하기 위한 해리 볼트모어의 대결',
                    style: TextStyle(
                      color: mainWhite,
                      fontSize: 13,
                    ),
                    maxLines: 2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    '2020 - 덴마크 - 액션',
                    style: TextStyle(
                      color: mainWhite,
                      fontSize: 11,
                    ),
                    maxLines: 2,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Expanded(
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/ko/d/dd/%ED%95%B4%EB%A6%AC_%ED%8F%AC%ED%84%B0%EC%99%80_%EB%A7%88%EB%B2%95%EC%82%AC%EC%9D%98_%EB%8F%8C_%EC%98%81%ED%99%94.jpg'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: ButtonTheme(
                minWidth: 1,
                height: 30,
                child: RaisedButton(
                  onPressed: () {},
                  child: Container(
                    child: Text(
                      "영화 더보기",
                      style: TextStyle(
                          fontSize: 12,
                          color: mainWhite,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  color: mainPink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
