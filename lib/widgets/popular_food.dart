import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 19),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image
          Row(
            children: [
              Image.asset(
                'lib/assets/eggs_salmon.png',
                height: 100,
              ),
              const SizedBox(width: 20),
              //name and price
              Column(
                children: [
                  Text(
                    "Salmon Eggs",
                    style: GoogleFonts.dmSerifDisplay(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "\$21.90",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          //heart
          Icon(
            Icons.favorite_outline,
            color: Colors.redAccent[400],
            size: 28,
          ),
        ],
      ),
    );
  }
}
