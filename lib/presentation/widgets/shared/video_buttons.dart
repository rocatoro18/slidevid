import 'package:flutter/material.dart';
import 'package:slidevid/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  const VideoButtons({super.key, required this.video});

  final VideoPost video;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            value: video.likes,
            iconData: Icons.favorite,
            iconColor: Colors.red),
        _CustomIconButton(
            value: video.likes, iconData: Icons.remove_red_eye_outlined),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton(
      {super.key, required this.value, required this.iconData, iconColor})
      // SE TIENE QUE COMPUTAR ESE COLOR
      : color = iconColor ?? Colors.white;

  final int value;
  final IconData iconData;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
              size: 30,
            )),
        Text('$value')
      ],
    );
  }
}
