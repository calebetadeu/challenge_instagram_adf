import 'package:flutter/material.dart';

class PostTimeLine extends StatelessWidget {
  const PostTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Stack(
      children: [
        Image.network(
          "https://pbs.twimg.com/media/E4IfjCGXoAI3xDQ.jpg:large",
          fit: BoxFit.fitHeight,
          height: height / 2,
        ),
        Container(
          height: height / 2,
          width: width,
          //color: Colors.red,
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 6),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                'https://ef564920920608e03abb-7d34ef097b6ab6c586dfc84157128505.ssl.cf1.rackcdn.com/PostImagem/36734/foto-de-perfil-profissional_o1eh30s23krp31qn41l3havc2fti.JPG'),
                          ),
                        ),
                        Text(
                          "sportscenterbr",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Icon(Icons.more_vert)
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
