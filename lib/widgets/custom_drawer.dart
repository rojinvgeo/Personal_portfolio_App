import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final Function(String) onItemTap;
  const CustomDrawer({super.key, required this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Text('My Portfolio', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () => onItemTap('home'),
          ),
          ListTile(
            title: const Text('About Me'),
            onTap: () => onItemTap('about'),
          ),
          ListTile(
            title: const Text('Projects'),
            onTap: () => onItemTap('projects'),
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () => onItemTap('contact'),
          ),
        ],
      ),
    );
  }
}
