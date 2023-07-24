// to display the categories of meals available
import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key,required this.availableMeals, required this.onToggleFavorite});

  final List<Meal> availableMeals;
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(context) {
    return GridView(
      padding: const EdgeInsets.all(24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      children: availableCategories
          .map((category) => CategoryGridItem(
            availableMeals:availableMeals,
              onToggleFavorite: onToggleFavorite, category: category))
          .toList(),
    );
  }
}
