import 'package:flutter/material.dart';
import 'package:slidevid/domain/entities/video_post.dart';
import 'package:slidevid/domain/repositories/video_posts_repository.dart';
//import 'package:slidevid/infrastructure/models/local_video_model.dart';
//import 'package:slidevid/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: REPOSITORY, DATASOURCE
  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRepository});

  // SE PUEDE DECIR QUE LA FUNCION LOADNEXTPAGE ES COMO UNA
  // FUNCION 'INIT' PARA CARGAR LOS PRIMEROS VIDEOS
  Future<void> loadNextPage() async {
    //await Future.delayed(const Duration(seconds: 2));

    // ESTE MAPA BARRE CADA UNO DE LOS ELEMENTOS DENTRO DE ESTE LISTADO, ESTO NO MUTA EL
    // ARREGLO, SOLO REGRESA UNO NUEVO

    // ESTUDIAR MAS ESTO (MAP)
    //final List<VideoPost> newVideos = videoPosts
    //    .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
    //    .toList();
    final newVideos = await videosRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
