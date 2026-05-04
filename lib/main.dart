import 'package:flutter/material.dart';

void main() {
  runApp(const MosantuApp());
}

class MosantuApp extends StatelessWidget {
  const MosantuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mosantu App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainTabsScreen(),
    );
  }
}

class MainTabsScreen extends StatefulWidget {
  const MainTabsScreen({super.key});

  @override
  State<MainTabsScreen> createState() => _MainTabsScreenState();
}

class _MainTabsScreenState extends State<MainTabsScreen> {
  int _index = 0;

  static const _pages = [
    _PlaceholderPage(title: 'Accueil'),
    _PlaceholderPage(title: 'Bible'),
    _PlaceholderPage(title: 'Actualités'),
    _PlaceholderPage(title: 'Enseignements'),
    _PlaceholderPage(title: 'Musique'),
    _PlaceholderPage(title: 'Messages'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mosantu App'),
      ),
      body: _pages[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (value) => setState(() => _index = value),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Accueil'),
          NavigationDestination(icon: Icon(Icons.menu_book_outlined), label: 'Bible'),
          NavigationDestination(icon: Icon(Icons.newspaper_outlined), label: 'Actualités'),
          NavigationDestination(icon: Icon(Icons.school_outlined), label: 'Enseignements'),
          NavigationDestination(icon: Icon(Icons.library_music_outlined), label: 'Musique'),
          NavigationDestination(icon: Icon(Icons.message_outlined), label: 'Messages'),
        ],
      ),
    );
  }
}

class _PlaceholderPage extends StatelessWidget {
  final String title;

  const _PlaceholderPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 12),
          Text('Écran v1 en préparation', style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
