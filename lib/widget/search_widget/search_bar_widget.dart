import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/widget/app_bar_widget.dart';

class SearchBar extends StatefulWidget {
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _filter = TextEditingController(); //검색위젯 컨트롤
  FocusNode focusNode = FocusNode(); //검색위젯에 커서가 있는지 없는지 상태확인
  String _searchText = ""; //현재 검색어 상태 가짐

  _SearchBarState() {
    _filter.addListener(() {
      setState(() {
        _searchText = _filter.text; //검색위젯 _filter변화 감지하여 상태 변화
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return
        Container(
            child: Column(
              children: <Widget> [
                Container(
                  color: mainBackground,
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Row(
                    children: <Widget>[
                      // Icon(Icons.arrow_back_ios_sharp,
                      //     size: 14
                      //     , color: Colors.white70),
                      // SizedBox(
                      //     width: 15
                      // ),
                      Expanded(
                          //flex: 6,
                          child: TextField(
                            
                              focusNode: focusNode,
                              cursorColor: mainPink,
                              style: TextStyle(
                                fontSize: 14,
                                ),
                              autofocus: false,
                              controller: _filter,
                              decoration: InputDecoration(
                                labelText: '동영상 검색어 입력',
                                floatingLabelBehavior: FloatingLabelBehavior.never,
                                filled: true,
                                fillColor: Colors.white10,
                                suffixIcon: Icon(Icons.search,
                                    color: Colors.white, size: 22
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)
                                  ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: mainPink),
                                ), 
                                
                                ),
                                
                              
                            /*: Container(),
                            hintText: '동영상 검색어 입력',
                            labelStyle: TextStyle(color: Colors.white),*/
                          )
                      )
                    ],
                  ),
                )
              ],
        //     )
         )
    );
  }
}