import 'package:challenge_instagram_adf/home/components/circle_story.dart';
import 'package:challenge_instagram_adf/model/story_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class UserStory extends StatelessWidget {
  final List<StoryModel> storyModel;
  const UserStory({super.key, required this.storyModel});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      height: 80,
      width: width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: storyModel.length,
            itemBuilder: (context, index) {
              return CircleStory(
                isLive: storyModel[index].isLive,
                url: storyModel[index].url,
              );
            }),
      ),
    );
  }
}
