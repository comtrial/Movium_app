import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/widget/app_bar_widget.dart';
import 'package:flutter_application_2/widget/channel_info_widget.dart';
import 'package:flutter_application_2/widget/movie_info_widget.dart';
import 'package:flutter_application_2/widget/player_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class PlayScreen extends StatefulWidget {
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainBackground,
        ),
        backgroundColor: mainBackground,
        body: SafeArea(
          child: ListView(
            children: [
              PlayVideo(),
              Channel_Info(key: Key(toString())),
              Movie_Info(key: Key(toString()))
            ],
          ),
        ));
  }
}
