import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Welcome to My Portfolio!',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
    );
  }
}
