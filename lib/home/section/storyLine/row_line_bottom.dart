import 'package:flutter/material.dart';

class RowLineBottom extends StatelessWidget {
  final String likes;
  final String userName;
  final String numberComents;
  final String postDescription;
  final String hoursAgo;

  const RowLineBottom({super.key, required this.likes, required this.userName, required this.numberComents, required this.hoursAgo, required this.postDescription});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  likes,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  "curtidas",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          Flexible(
            child: Text(
              "$userName $postDescription ..mais ",
              overflow: TextOverflow.visible,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Ver todos os $numberComents comentários",
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                Text("Há $hoursAgo horas",
                    style:
                        const TextStyle(fontWeight: FontWeight.w300, fontSize: 12)),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Ver tradução",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
