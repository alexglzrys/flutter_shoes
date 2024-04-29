import 'package:flutter/material.dart';

// AppBar personalizado
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Row(
          children: [
            // Titulo
            Text(
              title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            // Icono buscador
            const Icon(
              Icons.search,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
