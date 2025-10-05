import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'deatail_screen.dart';
import 'favorites_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, String>> _favorites = [];

  void addToFavorites(Map<String, String> recipe) {
    setState(() {
      if (!_favorites.contains(recipe)) {
        _favorites.add(recipe);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 104, 55, 187)),
      ),
      home: HomeScreen(),
      routes: {
        '/details': (context) => DetailsScreen(addToFavorites: addToFavorites),
        '/favorites': (context) =>
            FavoritesScreen(favorites: _favorites),
      },
    );
  }
}
