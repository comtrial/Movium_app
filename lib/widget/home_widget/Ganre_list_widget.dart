

import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';

class Ganre_list extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return // 상단 btn list
                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: subPink.withOpacity(0.6)
                      ),
                      child: Text(
                        '영화',
                        style: kHomeGanreStyle)
                        ,
                      onPressed: () {},
                      ),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: subPink.withOpacity(0.6)
                      ),
                      child: Text(
                        '드라마',
                        style: kHomeGanreStyle)
                        ,
                      onPressed: () {},
                      ),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: subPink.withOpacity(0.6)
                      ),
                      child: Text(
                        '애니',
                        style: kHomeGanreStyle)
                        ,
                      onPressed: () {},
                      ),
                      ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: subPink.withOpacity(0.6)
                      ),
                      child: Text(
                        '오덕후',
                        style: kHomeGanreStyle)
                        ,
                      onPressed: () {},
                      )
                  ]
                );
  }
}