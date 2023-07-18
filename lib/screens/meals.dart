import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.category, required this.meals});

  final Category category;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    List<Meal> filteredMeals = meals
        .where(
          (meal) => meal.categories.contains(category.id),
        )
        .toList();

    Widget content = ListView.builder(
      itemCount: filteredMeals.length,
      itemBuilder: ((context, index) => MealItem(meal: filteredMeals[index])),
    );

    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Uh oh... Nothing here!',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Try selecting a different category',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: content,
    );
  }
}
