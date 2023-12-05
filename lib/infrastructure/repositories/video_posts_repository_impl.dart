import 'package:slidevid/domain/datasources/video_posts_datasource.dart';
import 'package:slidevid/domain/entities/video_post.dart';
import 'package:slidevid/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  // NECESITA UNA FUENTE DE ORIGEN DE DATOS
  // ESTOY USANDO LA CLASE ABSTRACTA
  // MANDAME UN ORIGEN DE DATOS Y YO SIMPLEMENTE VOY A LLAMAR ESE ORIGEN DE DATOS
  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
