import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '📫 Contact Me',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () => _launchUrl('mailto:rojinvgeorge@gmail.com'),
              icon: const Icon(Icons.email),
              label: const Text('Email Me'),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () => _launchUrl('https://github.com/rojinvgeo'),
              icon: const Icon(Icons.link),
              label: const Text('Visit GitHub'),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () => _launchUrl('https://www.linkedin.com/in/rojin-v-george-393b67a5/'),
              icon: const Icon(Icons.person),
              label: const Text('LinkedIn Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
