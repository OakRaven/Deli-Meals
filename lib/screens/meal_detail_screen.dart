import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-details';

  @override
  Widget build(BuildContext context) {
    var mealId = ModalRoute.of(context).settings.arguments as String;
    var meal = DUMMY_MEALS.firstWhere((item) => item.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Details'),
      ),
      body: Center(
        child: Text('How to Prepare ${meal.title}'),
      ),
    );
  }
}
