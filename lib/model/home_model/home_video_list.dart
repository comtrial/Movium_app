
import 'package:flutter_application_2/model/home_model/home_video_item.dart';

class VideoList {
  
  String category;
  List<VideoItem> items;

  VideoList({ this.category, this.items});

 factory VideoList.fromJson(String category, Map<String, dynamic> json) =>
  VideoList(
    category: category,
    items: List<VideoItem>.from(
      json[category].map((data) => VideoItem.fromJson(data))));
}