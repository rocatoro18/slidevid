import 'package:flutter/material.dart';
import 'package:slidevid/domain/entities/video_post.dart';
import 'package:slidevid/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  const VideoScrollableView({super.key, required this.videos});

  final List<VideoPost> videos;

  @override
  Widget build(BuildContext context) {
    // TODO
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        // CON ESTO YA TENGO LA INSTANCIA DE VIDEO POSTS
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            // VIDEO PLAYER + GRADIENTE

            // BOTONES
            Positioned(
                bottom: 40, right: 20, child: VideoButtons(video: videoPost))
          ],
        );
      },
    );
  }
}
