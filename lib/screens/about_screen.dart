import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          '👋 Hi, I\'m Rojin!\n\nI\'m a Flutter developer passionate about building beautiful, responsive, and fast apps. I love experimenting with UI, animations, and clean architecture.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, height: 1.5),
        ),
      ),
    );
  }
}
