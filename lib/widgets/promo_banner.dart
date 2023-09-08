import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/widgets/button.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //promo mgs
              Text(
                "Get 32% promo",
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 20),
              //redeem button
              MyButton(
                text: "redeem",
                onTap: () {},
              ),
            ],
          ),
          //image
          Image.asset(
            'lib/assets/many_sushis.png',
            height: 125,
          )
        ],
      ),
    );
  }
}
