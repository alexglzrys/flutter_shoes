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
                  // ? Hero se utiliza para crear animaciones de transición fluidas entre dos widgets en diferentes rutas o páginas.
                  // Cuando se envuelve un widget con Hero, Flutter animará automáticamente la transición de ese widget desde su posición en una página a su posición en otra página. Esto crea efectos visuales agradables, especialmente cuando el mismo widget aparece en diferentes partes de la interfaz de usuario o en diferentes páginas.
                  // Para utilizar Hero, debes envolver el mismo widget con el mismo identificador en ambas rutas, el tag debe ser único dentro del árbol de widgets en cada ruta
                  Hero(
                    tag: 'preview-product-banner',
                    // Envolver el widget hijo de Hero con Material puede ayudar a proporcionar un contexto de diseño más estable y consistente durante la transición de Hero, lo que puede ayudar a evitar pequeñas discrepancias visuales
                    child: Material(
                      child: Preview(),
                    ),
                  ),
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
