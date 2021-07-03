// on home init data

import 'package:flutter_application_2/model/home_model/home_video_group.dart';
import 'package:flutter_application_2/model/home_model/home_video_list.dart';
import 'package:flutter_application_2/repository/youtube_repository.dart';
import 'package:get/get.dart';


//enum CategoryName { A_GROUP, B_GROUP, C_GROUP }

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  //나중에 로RxList<>로 바꾸면 될듯
  // Rx<VideoGroup> videoGroup = VideoGroup().obs; 
  RxList<VideoList> videoGroup = List<VideoList>().obs; 


  @override
  void onInit() {
    _homeListLoad();
    super.onInit(); 
  }


  void _homeListLoad() async {
    
    VideoList a_group = await HomeVideoListRepository.to.loadLists(0);
    VideoList b_group = await HomeVideoListRepository.to.loadLists(1);
    VideoList c_group = await HomeVideoListRepository.to.loadLists(2);

    //VideoGroup videoGroupResult;
    List<VideoList> lists = [];
    

    lists.add(a_group);
    lists.add(b_group);
    lists.add(c_group);
    
    //videoGroupResult.lists = lists;

    if(lists != null &&
     //lists.lists != null &&
      lists.length >0) {

       videoGroup(lists);
       //상단의 Rx<> 에 등록해주는 개념
       //videoGroup(videoGroupResult);
     }
    print(lists);
  }
}