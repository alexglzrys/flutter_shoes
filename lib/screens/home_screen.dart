import 'package:flutter/material.dart';
import 'package:shoes_flutter_app/widgets/widgets.dart';

// Pantalla - Página principal
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // Barra de título personalizada
          CustomAppBar(title: 'Para tí'),
          // Contenido principal con desplazamiento
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  // Vista previa del producto
                  Preview(),
                  // Descropción
                  Description(
                    title: 'Nike Air Max 720',
                    content:
                        'El primer Lifestyle Air Max de Nike te aporta estilo, comodidad y gran actitud en el Nike Air Max 720. El diseño se inspira en los íconos del Air Max y muestra la innovación más grande de Nike con una gran ventana y una nueva variedad de colores.',
                  )
                ],
              ),
            ),
          ),
          // Contenedor de precio y agregar al carrito
          Price(180),
        ],
      ),
    );
  }
}
