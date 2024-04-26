import 'package:challenge_instagram_adf/home/components/Icon_navigation_bar.dart';
import 'package:challenge_instagram_adf/home/section/bar_option_coments.dart';
import 'package:challenge_instagram_adf/home/section/post_time_line.dart';
import 'package:challenge_instagram_adf/home/section/user_story.dart';
import 'package:challenge_instagram_adf/model/story_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indice = 0;
  final List<StoryModel> storyModelList = [
    StoryModel(
        url:
            'https://ef564920920608e03abb-7d34ef097b6ab6c586dfc84157128505.ssl.cf1.rackcdn.com/PostImagem/36734/foto-de-perfil-profissional_o1eh30s23krp31qn41l3havc2fti.JPG',
        mainUser: true),
    StoryModel(
        url:
            'https://i.pinimg.com/originals/4f/73/3b/4f733b83724e86f43c759de191f7e9fc.jpg',
        isLive: true),
    StoryModel(
        url:
            'https://st5.depositphotos.com/18273866/65276/i/1600/depositphotos_652763588-stock-photo-one-man-young-adult-caucasian.jpg',
        isLive: true),
    StoryModel(
        url: 'https://tm.ibxk.com.br/2019/02/17/17124106623015.jpg',
        isLive: false),
    StoryModel(
        url:
            'https://wl-incrivel.cf.tsp.li/resize/728x/jpg/0ec/140/d189845022bb6eddb88bb5279a.jpg',
        isLive: false),
    StoryModel(
        url:
            'https://i0.wp.com/previews.123rf.com/images/shotsstudio/shotsstudio1505/shotsstudio150500055/40062787-vista-frontal-del-hombre-cauc%C3%A1sico-retratos-de-personas-reales.jpg?ssl=1',
        isLive: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              'Instagram',
              style: TextStyle(fontFamily: 'Billabong', fontSize: 38),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Row(
                children: [
                  IconNavigationBar(icon: Icons.favorite_border_outlined),
                  IconNavigationBar(icon: Icons.message_outlined)
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indice,
          onTap: (index) {
            setState(() {
              indice = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 28,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 28,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_outlined,
                size: 28,
              ),
              label: 'Video Collection',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 28,
              ),
              label: 'Shopping',
            ),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://ef564920920608e03abb-7d34ef097b6ab6c586dfc84157128505.ssl.cf1.rackcdn.com/PostImagem/36734/foto-de-perfil-profissional_o1eh30s23krp31qn41l3havc2fti.JPG'),
                ),
                label: 'Avatar')
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              UserStory(
                storyModel: storyModelList,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  children: [
                    PostTimeLine(),
                    BarOptionComents(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "1.230",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Curtidas",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Flexible(
                            child: Text(
                              "sportscenter Será que neyar vai ganhar bola de ouro e agora voce pode votar nele ,e aí voce votasria? ",
                              overflow: TextOverflow.visible,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Ver todos os 8 comentários",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Text("Há 2 horas",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12)),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Ver tradução",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
