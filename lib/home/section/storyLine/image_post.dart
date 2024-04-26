import 'package:flutter/material.dart';

class ImagePost extends StatelessWidget {
  final String imagePost;
  final String userImagePost;
  final String userNamePost;
  const ImagePost(
      {super.key,
      required this.imagePost,
      required this.userImagePost,
      required this.userNamePost});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        Image.network(
          imagePost,
          fit: BoxFit.fitHeight,
          height: height / 2,
        ),
        Container(
          height: height / 2,
          width: width,
          //color: Colors.red,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(userImagePost),
                          ),
                        ),
                        Text(
                          userNamePost,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.more_vert)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
