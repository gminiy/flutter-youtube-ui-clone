import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui_clone/common_widget/home/video.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        <Widget>[Video()],
      ),
    );
  }
}
