import 'package:flutter/material.dart';
import 'package:slidevid/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // TODO: CARGAR VIDEOS
    notifyListeners();
  }
}
