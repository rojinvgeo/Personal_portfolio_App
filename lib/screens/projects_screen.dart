import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        ListTile(
          leading: Icon(Icons.web),
          title: Text('Responsive Portfolio Website'),
          subtitle: Text('A modern Flutter web app with responsive layout.'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.phone_android),
          title: Text('Flutter Login App'),
          subtitle: Text('A mobile app with form validation and theming.'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.data_exploration),
          title: Text('Data Visualization Dashboard'),
          subtitle: Text('An interactive chart-based Flutter web app.'),
        ),
      ],
    );
  }
}
