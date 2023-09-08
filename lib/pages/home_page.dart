import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sushi_app/data/dummy_data.dart';
import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/widgets/foodMenuList/food_list.dart';
import 'package:sushi_app/widgets/popular_food.dart';
import 'package:sushi_app/widgets/promo_banner.dart';
import 'package:sushi_app/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[900],
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: const Text("Shizen"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart_page');
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //promo banner
          const PromoBanner(),
          const SizedBox(height: 25),
          //search bar
          const MySearchBar(),
          const SizedBox(height: 10),
          //menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(child: FoodList(avaiablefoods: availableFoods)),
          const SizedBox(height: 19),
          //popular food
          const PopularFood()
        ],
      ),
    );
  }
}
