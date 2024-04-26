import 'package:challenge_instagram_adf/home/section/bar_option_coments.dart';
import 'package:challenge_instagram_adf/home/section/storyLine/image_post.dart';
import 'package:challenge_instagram_adf/home/section/storyLine/row_line_bottom.dart';
import 'package:challenge_instagram_adf/model/time_line_model.dart';
import 'package:flutter/material.dart';

class PostTimeLine extends StatelessWidget {
  final TimeLineModel timeLine;

  const PostTimeLine({super.key, required this.timeLine});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImagePost(
          imagePost: timeLine.imagePost,
          userImagePost: timeLine.userImagePost!,
          userNamePost:timeLine.userName ,
        ),
        const BarOptionComents(),
        RowLineBottom(
          postDescription: timeLine.postDescription ,
          likes: timeLine.likes,
          userName: timeLine.userName,
          numberComents: timeLine.numberComents,
          hoursAgo: timeLine.hoursAgo,
        )
      ],
    );
  }
}
