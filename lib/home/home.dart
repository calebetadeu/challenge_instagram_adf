import 'package:challenge_instagram_adf/home/components/Icon_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text('Instagram',style: 
          TextStyle(
            fontFamily: 'Billabong',
            fontSize: 38
          ),),
        ),
        actions: const [
       
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Row(
              children: [
                IconNavigationBar(icon:  Icons.add_circle_outline_sharp),
                IconNavigationBar(icon: Icons.favorite_border_outlined),
                IconNavigationBar(icon: Icons.near_me_outlined)
              ],
            ),
          )
        ],
      ),
      body: Container(),
    );
  }
}
