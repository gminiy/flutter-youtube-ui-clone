import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/video_thumbnail_data.dart';

class Video extends StatelessWidget {
  final VideoThumbnailData _thumbnailData;

  const Video({
    required VideoThumbnailData thumbnailData,
  }) : _thumbnailData = thumbnailData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Column(
        children: [
          Image.network(
            _thumbnailData.imageUrl,
            fit: BoxFit.contain,
            width: double.infinity,
            height: 220,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage:
                      AssetImage(_thumbnailData.profileTuhmbnailImage),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    SizedBox(
                        width: 300,
                        child: Text(
                          _thumbnailData.title,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
                width: 32,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(CupertinoIcons.ellipsis_vertical),
                    color: Colors.white,
                    iconSize: 15,
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              width: 300,
              child: Text(
                '${_thumbnailData.userNickname} \u00B7 조회수 ${_thumbnailData.views}회 \u00B7 ${_thumbnailData.createdTimeAgo}',
                style: const TextStyle(color: Colors.white54),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
