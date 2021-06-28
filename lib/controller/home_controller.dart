// on home init data

import 'package:flutter_application_2/model/home_model/home_video_list.dart';
import 'package:flutter_application_2/repository/youtube_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  //나중에 로RxList<>로 바꾸면 될듯
  //Rx<HomeVideoList> homevideolist = HomeVideoList().obs; 
  @override
  void onInit() {
    _homeListLoad();
    super.onInit(); 
  }


  void _homeListLoad() async {
    
    VideoList a_group = await HomeVideoListRepository.to.loadLists();
    VideoList b_group = await HomeVideoListRepository.to.loadLists();
    VideoList c_group = await HomeVideoListRepository.to.loadLists();

    var category_list = [a_group, b_group, c_group];

    print(category_list);
  }
}