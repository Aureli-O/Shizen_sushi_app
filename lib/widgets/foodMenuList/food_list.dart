import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sushi_app/data/dummy_data.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/pages/food_details_page.dart';
import 'package:sushi_app/widgets/foodMenuList/food_tile.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key, required this.avaiablefoods});

  final List<Food> avaiablefoods;

  @override
  Widget build(BuildContext context) {
    void navigateToFoodDetails(int index) {
      final shop = context.read<Shop>();
      final foodMenu = shop.foodMenu;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodDetailsPage(
            food: availableFoods[index],
          ),
        ),
      );
    }

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: avaiablefoods.length,
      itemBuilder: (context, index) => FoodTile(
        food: avaiablefoods[index],
        onTap: () => navigateToFoodDetails(index),
      ),
    );
  }
}
