import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/widgets/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 145, 54, 48),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Shop Name
              Text(
                "SHIZEN",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),

              //icon
              Padding(
                padding: const EdgeInsets.all(45.0),
                child: Image.asset('lib/assets/eggs_salmon.png'),
              ),

              //title
              Text(
                "THE TASTE OF JAPONESE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),

              //subtitle
              Text(
                "Feel the taste of the most popular Japonese food from anywhere and anytime",
                style: GoogleFonts.inter(
                  color: Colors.grey[300],
                  height: 2,
                ),
              ),
              const SizedBox(height: 10),
              //get started button

              MyButton(
                text: "Get Started",
                onTap: () {
                  Navigator.pushNamed(context, '/home_page');
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
