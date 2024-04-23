import 'package:challenge_instagram_adf/home/components/Icon_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   int indice = 0 ; 
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
                IconNavigationBar(icon: Icons.add_circle_outline_sharp),
                IconNavigationBar(icon: Icons.favorite_border_outlined),
                IconNavigationBar(icon: Icons.near_me_outlined)
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
      currentIndex: indice,
      onTap: (index){
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
      body: Container(),
    );
  }
}
