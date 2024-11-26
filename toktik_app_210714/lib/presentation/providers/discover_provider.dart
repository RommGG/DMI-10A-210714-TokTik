import 'package:flutter/material.dart';
import 'package:toktik_app_210714/domain/entities/video_post.dart';
import 'package:toktik_app_210714/infraestructure/models/local_video_model.dart';
import 'package:toktik_app_210714/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialloading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //todo:pregunta de examen
    //todo: cargar los videos
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();

    videos.addAll(newVideos);
    initialloading = false;
    notifyListeners();
  }
}
