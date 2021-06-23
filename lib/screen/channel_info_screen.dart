import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/widget/app_bar_widget.dart';
import 'package:get/get.dart';

class ChannelInformationScreen extends StatefulWidget {
  _ChannelInformationScreen createState() => _ChannelInformationScreen();
}

class _ChannelInformationScreen extends State<ChannelInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainBackground,
        appBar: AppBar(
          backgroundColor: mainBackground,
        ),
        body: Center(
          child: Text(
            "채널 정보 Screen channel_id :${(Get.parameters["channelid"])}",
            style: TextStyle(fontSize: 18, color: mainWhite),
          ),
        ));
  }
}
