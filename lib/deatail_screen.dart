import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Function(Map<String, String>) addToFavorites;

  const DetailsScreen({super.key, required this.addToFavorites});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> recipe =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(title: Text(recipe['name']!)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  recipe['image']!,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 22),
            Text(
              recipe['name']!,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 18),
            const Text(
              "Ingredients:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            Text(recipe['ingredients']!, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 18),
            const Text(
              "Instructions:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            Text(recipe['instructions']!, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  addToFavorites(recipe);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text("${recipe['name']} added to favorites!"),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
                icon: const Icon(Icons.favorite, color: Color.fromARGB(255, 246, 58, 44)),
                label: const Text("Add to Favorites"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25, vertical: 13),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
