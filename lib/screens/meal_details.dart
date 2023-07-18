import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.star))],
      ),
      body: Container(
        child: Column(
          children: [
            Image.network(meal.imageUrl),
            const SizedBox(
              height: 20,
            ),
            const Text("meal details....")
          ],
        ),
      ),
    );
  }
}
