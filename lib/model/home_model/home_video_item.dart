// To parse this JSON data, do
//
//     final videoItem = videoItemFromJson(jsonString);

import 'dart:convert';

VideoItem videoItemFromJson(String str) => VideoItem.fromJson(json.decode(str));

String videoItemToJson(VideoItem data) => json.encode(data.toJson());

class VideoItem {
    VideoItem({
        this.id,
        this.videoId,
        this.channelTitle,
        this.channelId,
        this.videoPublishDate,
        this.videoTitle,
        this.videoDescription,
        this.videoCategory,
        this.videoThumbnail,
        this.collectionDate,
    });

    String id;
    String videoId;
    String channelTitle;
    String channelId;
    int videoPublishDate;
    String videoTitle;
    String videoDescription;
    dynamic videoCategory;
    String videoThumbnail;
    DateTime collectionDate;

    factory VideoItem.fromJson(Map<String, dynamic> json) => VideoItem(
        id: json["_id"],
        videoId: json["video_id"],
        channelTitle: json["channel_title"],
        channelId: json["channel_id"],
        videoPublishDate: json["video_publish_date"],
        videoTitle: json["video_title"],
        videoDescription: json["video_description"],
        videoCategory: json["video_category"],
        videoThumbnail: json["video_thumbnail"],
        collectionDate: DateTime.parse(json["collection_date"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "video_id": videoId,
        "channel_title": channelTitle,
        "channel_id": channelId,
        "video_publish_date": videoPublishDate,
        "video_title": videoTitle,
        "video_description": videoDescription,
        "video_category": videoCategory,
        "video_thumbnail": videoThumbnail,
        "collection_date": collectionDate.toIso8601String(),
    };
}
