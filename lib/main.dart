import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'details_screen.dart';
import 'favorites_screen.dart';

void main() {
  runApp(RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Book',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      routes: {
        '/details': (context) => DetailsScreen(),
        '/favorites': (context) => FavoritesScreen(),
      },
    );
  }
}
