// to display the categories of meals available
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Category"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: const [
          Card(
            child: Text('Card 1'),
          ),
          Card(
            child: Text('Card 2'),
          ),
          Card(
            child: Text('Card 3'),
          ),
          Card(
            child: Text('Card 4'),
          ),
        ],
      ),
    );
  }
}
