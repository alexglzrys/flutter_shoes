import 'package:flutter/material.dart';
import 'package:shoes_flutter_app/widgets/widgets.dart';

// Detalle del producto seleccionado
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Preview(fullscreen: true),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Description(
                    title: 'Nike Air Max 720',
                    content:
                        'El primer Lifestyle Air Max de Nike te aporta estilo, comodidad y gran actitud en el Nike Air Max 720. El diseño se inspira en los íconos del Air Max y muestra la innovación más grande de Nike con una gran ventana y una nueva variedad de colores.',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
