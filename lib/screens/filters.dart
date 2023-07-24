import 'package:flutter/material.dart';
// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';

class FiltersScren extends StatefulWidget {
  const FiltersScren({super.key});

  @override
  State<FiltersScren> createState() {
    return _FilterScreenState();
  }
}

class _FilterScreenState extends State<FiltersScren> {
  var _isGlutenFreeChecked = false;
  var _isLactoseFreeChecked = false;
  var _isVegetarian = false;
  var _isVegan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Your Filters"),
        ),
        // drawer: MainDrawer(
        //     onSelectScreen: (identifier) => {
        //           Navigator.of(context).pop(),
        //           if (identifier == 'meals')
        //             {
        //               Navigator.of(context).push(
        //                 MaterialPageRoute(
        //                   builder: (ctx) => const TabsScreen(),
        //                 ),
        //               ),
        //             }
        //         }),
        body: Column(
          children: [
            SwitchListTile(
              value: _isGlutenFreeChecked,
              onChanged: (isChecked) {
                setState(() {
                  _isGlutenFreeChecked = isChecked;
                });
              },
              title: Text(
                'Glutin-Free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include glutin free meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _isLactoseFreeChecked,
              onChanged: (isChecked) {
                setState(() {
                  _isLactoseFreeChecked = isChecked;
                });
              },
              title: Text(
                'Lactose-Free',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include lactose free meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _isVegetarian,
              onChanged: (isChecked) {
                setState(() {
                  _isVegetarian = isChecked;
                });
              },
              title: Text(
                'Vegetarian',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include vegetarian meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _isVegan,
              onChanged: (isChecked) {
                setState(() {
                  _isVegan = isChecked;
                });
              },
              title: Text(
                'Vegan',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include vegan meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            )
          ],
        ));
  }
}
