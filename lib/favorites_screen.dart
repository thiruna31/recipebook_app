import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  // For now just a placeholder, you can store favorites globally or in a provider
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite Recipes")),
      body: Center(child: Text("Your favorites will appear here")),
    );
  }
}
