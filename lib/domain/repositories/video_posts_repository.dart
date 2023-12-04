import 'package:slidevid/domain/entities/video_post.dart';

// EL REPOSITORY VA A TERMINAR LLAMANDO EL DATA SOURCE
abstract class VideoPostRepository {
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
