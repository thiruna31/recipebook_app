import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final recipe = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(title: Text(recipe['name']!)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(recipe['image']!, height: 200),
            SizedBox(height: 20),
            Text("Ingredients: ${recipe['ingredients']}"),
            SizedBox(height: 10),
            Text("Instructions: ${recipe['instructions']}"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Text(isFavorite ? "Unfavorite" : "Favorite"),
            ),
          ],
        ),
      ),
    );
  }
}
