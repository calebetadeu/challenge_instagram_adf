import 'package:flutter/material.dart';

class TextIsLive extends StatelessWidget {
  const TextIsLive({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(2.0),
      child: Text(
        "Ao vivo",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontFamily: 'roboto',
        ),
      ),
    );
  }
}
