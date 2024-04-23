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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    
                    Icons.add_circle_outline_sharp,
                    size: 35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.favorite_border_outlined,
                    size: 35,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(
                    Icons.near_me_outlined,
                    size: 35,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Container(),
    );
  }
}
