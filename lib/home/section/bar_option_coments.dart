import 'package:flutter/material.dart';

class BarOptionComents extends StatelessWidget {
  const BarOptionComents({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_border_outlined,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.chat_bubble_outline,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.share,
                size: 30,
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.bookmark_outline,
            size: 30,
          ),
        )
      ],
    );
  }
}
