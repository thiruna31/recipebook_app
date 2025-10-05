import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'Pizza',
      'ingredients': 'Red sauce, Flour, Cheese, Tomato, chilli flakes',
      'instructions': 'Bake for 25 minutes',
      'image': 'assets/images/pizza.png',
    },
    {
      'name': 'Pasta',
      'ingredients': 'vegetables, Pasta, Sauce, Cheese',
      'instructions': 'Boil properly served within 15 minutes',
      'image': 'assets/images/pasta.png',
    },
    {
      'name': 'Cake',
      'ingredients': 'Flour, Sugar, Eggs, creams, flavors',
      'instructions': 'Bake for 35 minutes',
      'image': 'assets/images/cake.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Book')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: Image.asset(
                recipes[index]['image']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(recipes[index]['name']!),
              subtitle: Text(recipes[index]['ingredients']!),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: recipes[index],
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.favorite),
        onPressed: () {
          Navigator.pushNamed(context, '/favorites');
        },
      ),
    );
  }
}
