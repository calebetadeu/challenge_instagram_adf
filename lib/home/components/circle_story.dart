import 'package:flutter/material.dart';

class CircleStory extends StatelessWidget {
  final bool? isLive;
  final String? url;

  const CircleStory({super.key, this.isLive = false, required this.url});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 80,
        child: Stack(
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(35),

                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.red,
                    Colors.blue
                  ], // Change these colors to your desired gradient
                ),
                border: Border.all(
                    width: 2, color: Colors.green, style: BorderStyle.solid),
                shape: BoxShape.circle,
                // color: Colors.red
              ),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(url!),
              ),
            ),
            isLive!
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(157, 16, 72, 0.965),
                          borderRadius: BorderRadius.circular(5),
                          shape: BoxShape.rectangle),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          "Ao vivo",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'roboto',
                          ),
                        ),
                      ),
                    ),
                  )
                : Text("")
          ],
        ),
      ),
    );
  }
}
