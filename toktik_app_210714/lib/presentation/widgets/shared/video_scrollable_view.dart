import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:toktik_app_210714/domain/entities/video_post.dart';
import 'package:toktik_app_210714/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final VideoPost videoPost = videos[index];

        return Stack(
          children: [
            
           VideoButtons(video: videoPost)
            
          ],
        );
      },
    );
  }
}


