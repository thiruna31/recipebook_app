import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'lasanga',
      'ingredients': 'Flour, Cheese, Tomato',
      'instructions': 'Bake for 20 mins',
      'image': 'assets/images/pizza.png',
    },
    {
      'name': 'Pasta',
      'ingredients': 'Pasta, Sauce, Cheese',
      'instructions': 'Boil and mix',
      'image': 'assets/images/pasta.png',
    },
    {
      'name': 'Cake',
      'ingredients': 'Flour, Sugar, Eggs',
      'instructions': 'Bake for 30 mins',
      'image': 'assets/images/cake.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe Book')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              recipes[index]['image']!,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
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
