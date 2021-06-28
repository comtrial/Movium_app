import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/constant.dart';
import 'package:flutter_application_2/screen/home_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'app.dart';
import 'binding/init_binding.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Youtube Clone App",
      color: mainBackground,
      theme: ThemeData(
        //Custom color로 바꿔야 할 듯
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      getPages: [
        GetPage(name: "/", page: () => App()),
        // GetPage(
        //   name: "/detail/:videoId",
        //   page: () => YoutubeDetail(),
        //   binding: BindingsBuilder(
        //     () => Get.lazyPut<YoutubeDetailController>(
        //         () => YoutubeDetailController()),
        //   ),
        // ),
        // GetPage(
        //   name: "/search",
        //   page: () => YoutubeSearch(),
        //   binding: BindingsBuilder(
        //     () => Get.lazyPut<YoutubeSearchController>(
        //         () => YoutubeSearchController()),
        //   ),
        // )
      ],
    );
  }
}
