import 'package:challenge_instagram_adf/home/components/Icon_navigation_bar.dart';
import 'package:challenge_instagram_adf/home/section/storyLine/post_time_line.dart';
import 'package:challenge_instagram_adf/home/section/user_story.dart';
import 'package:challenge_instagram_adf/model/story_model.dart';
import 'package:challenge_instagram_adf/model/time_line_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indice = 0;
  final List<TimeLineModel> postTimeLine = [
    TimeLineModel(
        imagePost:
            "https://assets.goal.com/images/v3/blt30f6a3538e89d7ea/52142032574_ee2e1c0fa0_o.jpg?auto=webp&format=pjpg&width=3840&quality=60",
        userImagePost: "https://a.espncdn.com/i/teamlogos/soccer/500/2029.png",
        likes: "1.500",
        userName: "palmeiras",
        numberComents: "30",
        postDescription:
            " coração verde pulsando mais forte do que nunca! 💚🐷 Orgulho de vestir as cores que",
        hoursAgo: "1"),
    TimeLineModel(
        imagePost:
            "https://scinova.com.br/principal/wp-content/uploads/2017/04/florianopolis_cc_ricardoneves-400x267.jpg",
        userImagePost:
            "https://img.freepik.com/fotos-gratis/retrato-de-homem-adulto-posando_23-2148729642.jpg",
        likes: "11.500",
        userName: "Thiago olman",
        
        postDescription: "Cada gota de suor é um passo em direção aos seus objetivos. Não importa quão difícil",
        numberComents: "300",
        hoursAgo: "4"),
    TimeLineModel(
        imagePost:
            "https://media.timeout.com/images/105793090/750/562/image.jpg",
        userImagePost:
            "https://img3.stockfresh.com/files/g/giulio_fornasar/m/23/7717706_stock-photo-real-people-is-better-portrait-of-a-young-man.jpg",
        likes: "7.500",
        postDescription:
            "Explorando os cantos pitorescos de uma cidade perdida no tempo.",
        userName: "Daniel Lapost",
        numberComents: "450",
        hoursAgo: "4"),
  ];
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
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: UserStory(storyModel: storyModelList),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return PostTimeLine(timeLine: postTimeLine[index]);
                },
                childCount: postTimeLine.length,
              ),
            ),
          ],
        ));
  }
}
