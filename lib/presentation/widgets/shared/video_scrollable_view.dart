import 'package:flutter/material.dart';
import 'package:slidevid/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget {
  const VideoScrollableView({super.key, required this.videos});

  final List<VideoPost> videos;

  @override
  Widget build(BuildContext context) {
    // TODO
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.amber)
      ],
    );
  }
}
