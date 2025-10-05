import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Map<String, String>> favorites;

  const FavoritesScreen({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorites")),
      body: favorites.isEmpty
          ? Center(child: Text("No favorites yet"))
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final recipe = favorites[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                  child: ListTile(
                    leading: Image.asset(
                      recipe['image']!,
                      width: 52,
                      height: 52,
                      fit: BoxFit.cover,
                    ),
                    title: Text(recipe['name']!),
                    subtitle: Text(recipe['ingredients']!),
                  ),
                );
              },
            ),
    );
  }
}
