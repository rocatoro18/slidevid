import 'package:slidevid/domain/datasources/video_posts_datasource.dart';
import 'package:slidevid/domain/entities/video_post.dart';
import 'package:slidevid/infrastructure/models/local_video_model.dart';
import 'package:slidevid/shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  // IMPLEMENTACION PARA OBTENER VIDEOS LOCALES
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    // ESTE MAPA BARRE CADA UNO DE LOS ELEMENTOS DENTRO DE ESTE LISTADO, ESTO NO MUTA EL
    // ARREGLO, SOLO REGRESA UNO NUEVO

    // ESTUDIAR MAS ESTO (MAP)
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }
}
