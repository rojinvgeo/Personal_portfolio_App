import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/contact_screen.dart';
import 'widgets/custom_drawer.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  bool _isDark = false;
  String _currentPage = 'home';

  Widget _getScreen() {
    switch (_currentPage) {
      case 'about':
        return const AboutScreen();
      case 'projects':
        return const ProjectsScreen();
      case 'contact':
        return const ContactScreen();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: _isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Portfolio'),
          actions: [
            IconButton(
              icon: Icon(_isDark ? Icons.dark_mode : Icons.light_mode),
              onPressed: () {
                setState(() => _isDark = !_isDark);
              },
            ),
          ],
        ),
        drawer: CustomDrawer(
          onItemTap: (page) {
            setState(() => _currentPage = page);
            Navigator.pop(context);
          },
        ),
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _getScreen(),
        ),
      ),
    );
  }
}
