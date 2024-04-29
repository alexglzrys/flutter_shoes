import 'package:flutter/material.dart';

// Descripción del producto
class Description extends StatelessWidget {
  const Description({super.key, required this.title, required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            content,
            style: const TextStyle(height: 1.5, color: Colors.black54),
          )
        ],
      ),
    );
  }
}
