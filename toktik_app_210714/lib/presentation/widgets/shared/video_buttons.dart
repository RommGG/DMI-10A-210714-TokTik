import 'package:flutter/material.dart';
import 'package:toktik_app_210714/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build (BuildContext context)
  return Column(
    children: [
      _CustomIconButton(value: video.likes, color: Colors.red, iconData: Icons.favorite,)
    ],

  );


}



class _CustomIconButton extends StatelessWidget{

final int value;
final IconData iconData;
final Color color;



  const _CustomIconButton({required this.value, required this.iconData, required this.color});


}