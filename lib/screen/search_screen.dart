import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/widget/app_bar_widget.dart';
import 'package:flutter_application_2/widget/search_widget/search_bar_widget.dart';

class  SearchGenre extends StatelessWidget {
  get margin => null;

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
     var width = screensize.width;
     var height = screensize.height;
    return Scaffold(
        appBar: AppBar(
          title: CustomAppBar(),
          backgroundColor: mainBackground,
        ),
        backgroundColor: mainBackground,
        body: Container(
            margin: EdgeInsets.only(left: 14, right: 14),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SearchBar(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 10
                      ), // top공간
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: subPink,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            minimumSize: Size(width * 0.4,height * 0.2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0)
                            ),
                        ),
                        child: Text(
                            '로맨스',
                            style: kHomeGanreStyle)
                        ,
                        onPressed: () {},
                      ),
                      //SizedBox(
                      //width: 20
                      //), //행에서 사이간격
                      ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            primary: subPink,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            minimumSize: Size(170,80),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0)
                            )
                        ),
                        child: Text(
                            '액션',
                            style: kHomeGanreStyle,)
                        ,
                        onPressed: () {},
                      ),
                    ],
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                  ), // 1열row

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 10
                      ),
                      ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            primary: subPink,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            minimumSize: Size(170,80),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0)
                            )
                        ),
                        child: Text(
                            '공포',
                            style: kHomeGanreStyle)
                        ,
                        onPressed: () {},
                      ),
                      SizedBox(
                      width: 20
                      ), // 행에서 사이간격
                      ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            primary: subPink,
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.topLeft,
                            minimumSize: Size(170,80),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.0)
                            )
                        ),
                        child: Text(
                            '코미디',
                            style: kHomeGanreStyle)
                        ,
                        onPressed: () {},
                      ),
                      SizedBox(
                          width: 10
                      ),
                    ],// 2열widget
                  ),//2열 row

                ]//커다란 위젯
            )
        )// 상단 btn list

    );
  }
}