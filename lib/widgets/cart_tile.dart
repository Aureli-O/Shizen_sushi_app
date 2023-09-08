import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/models/food.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
    required this.name,
    required this.removeFromCart,
    required this.price,
    required this.food,
  });

  final String name;
  final Food food;
  final double price;
  final void Function(Food food, BuildContext context) removeFromCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(110, 140, 94, 91),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: ListTile(
        title: Text(
          name,
          style: GoogleFonts.dmSerifDisplay(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          '\$$price',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          onPressed: () => removeFromCart(food, context),
        ),
      ),
    );
  }
}
