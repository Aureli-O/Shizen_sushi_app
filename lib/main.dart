import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/pages/cart_page.dart';
import 'package:sushi_app/pages/home_page.dart';
import 'package:sushi_app/pages/intro_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 145, 54, 48),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const IntroPage(),
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/home_page': (context) => const HomePage(),
        '/cart_page': (context) => const CartPage()
      },
    );
  }
}
