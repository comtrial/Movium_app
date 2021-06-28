
import 'package:flutter_application_2/controller/app_controller.dart';
import 'package:flutter_application_2/repository/youtube_repository.dart';
import 'package:get/get.dart';

class InitBinding implements Bindings {
  
  @override
  void dependencies(){
    Get.put(AppController());
    Get.put(HomeVideoListRepository(), permanent: true);
  }
}