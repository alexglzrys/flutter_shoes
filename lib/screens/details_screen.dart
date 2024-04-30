import 'package:flutter/material.dart';
import 'package:shoes_flutter_app/widgets/widgets.dart';

// Detalle del producto seleccionado
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Vista previa del producto
          const Preview(fullscreen: true),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  // Descripción
                  const Description(
                    title: 'Nike Air Max 720',
                    content:
                        'El primer Lifestyle Air Max de Nike te aporta estilo, comodidad y gran actitud en el Nike Air Max 720. El diseño se inspira en los íconos del Air Max y muestra la innovación más grande de Nike con una gran ventana y una nueva variedad de colores.',
                  ),
                  // Precio y botón de compra
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    margin: const EdgeInsets.only(bottom: 16),
                    child: const Row(
                      children: [
                        Text(
                          '\$180.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Button(
                          'Agregar al carrito',
                          paddingVertical: 10,
                          paddingHorizontal: 22,
                        )
                      ],
                    ),
                  ),
                  // Colores
                  const CustomColors(),
                  // Acciones
                  const CustomActions(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
