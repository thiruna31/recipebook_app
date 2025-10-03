import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {'name': 'Pizza', 'ingredients': 'Flour, Cheese, Tomato', 'instructions': 'Bake for 20 mins'},
    {'name': 'Pasta', 'ingredients': 'Pasta, Sauce, Cheese', 'instructions': 'Boil and mix'},
    {'name': 'Cake', 'ingredients': 'Flour, Sugar, Eggs', 'instructions': 'Bake for 30 mins'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe Book')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/details',
                arguments: recipes[index],
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          Navigator.pushNamed(context, '/favorites');
        },
      ),
    );
  }
}
