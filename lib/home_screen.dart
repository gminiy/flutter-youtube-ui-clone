import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/common_widget/home/video.dart';
import 'package:flutter_youtube_ui_clone/video_thumbnail_data.dart';

class HomeScreen extends StatelessWidget {
  final List<VideoThumbnailData> dummyThumbnailData =
      List.generate(30, (index) {
    return VideoThumbnailData(
      imageUrl: 'https://i.ytimg.com/vi/f0jr8mKmMpI/mqdefault.jpg',
      title: '실수에도 흔들리지 않고 끝까지 집중! 특유의 매력을 가진 56호 가수',
      userNickname: 'JTBC Voyage',
      views: '15만회',
      createdTimeAgo: '16시간 전',
      profileTuhmbnailImage: 'asset/profile_image.png',
    );
  });

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        dummyThumbnailData.map((e) => Video(thumbnailData: e)).toList(),
      ),
    );
  }
}
