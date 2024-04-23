import 'package:flutter/material.dart';

class IconNavigationBar extends StatelessWidget {
  final IconData icon;
  const IconNavigationBar({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Icon(
        icon,
        size: 35,
      ),
    );
  }
}
