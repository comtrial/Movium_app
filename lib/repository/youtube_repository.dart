

import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/home_model/home_video_list.dart';
import 'package:get/get.dart';

class HomeVideoListRepository extends GetConnect{

  static HomeVideoListRepository get to => Get.find();

  @override
  void onInit() {

    // 통신 base url 등록
    httpClient.baseUrl = "http://localhost:3000";
    super.onInit();
  }
  //안댐 list로
  
  Future<VideoList> loadLists() async {
    String url = "/home";

    final response = await get(url);

    if(response.status.hasError){
      return Future.error(response.statusText);
    } 
    else {
      if(response.body != null && response.body.length >0){
        
        return VideoList.fromJson(response.body.keys.toList()[0], response.body);
      }
    }
  }
}