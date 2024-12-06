import 'package:flutter/material.dart';
import 'package:toktik_app_210714/domain/entities/video_post.dart';
import 'package:toktik_app_210714/infraestructure/models/local_video_model.dart';
import 'package:toktik_app_210714/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  //Todo: repósitory, DataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    //todo:pregunta de examen
    //todo: cargar los videos
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.formJson(video).toVideoPostEntity())
        .toList();
      

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}