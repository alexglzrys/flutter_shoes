import 'package:flutter/material.dart';
import 'package:shoes_flutter_app/screens/details_screen.dart';
import 'package:shoes_flutter_app/screens/home_screen.dart';

void main() => runApp(const ShoesApp());

class ShoesApp extends StatelessWidget {
  const ShoesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'details': (_) => const DetailsScreen(),
      },
    );
  }
}
