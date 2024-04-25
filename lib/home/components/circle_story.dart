import 'package:flutter/material.dart';

class CircleStory extends StatelessWidget {
  final bool isLive;
  final String url;
  final bool mainUser;

  const CircleStory({
    super.key,
    this.isLive = false,
    required this.url,
    this.mainUser = false,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 80,
        child: Stack(
          children: [
            Container(
              height: screenHeight,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.blue],
                ),
                border: Border.all(
                  width: 2,
                  color: Colors.green,
                  style: BorderStyle.solid,
                ),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(url),
              ),
            ),
            mainUser
                ? _buildAddButton()
                : isLive
                    ? _buildLiveIndicator()
                    : Container(),
          ],
        ),
      ),
    );
  }

  Widget _buildAddButton() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(
            Icons.add,
            size: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildLiveIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(157, 16, 72, 0.965),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            "Ao vivo",
            style: TextStyle(fontSize: 10),
          ),
        ),
      ),
    );
  }
}
