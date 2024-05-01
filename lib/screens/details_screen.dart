import 'package:flutter/material.dart';
import 'package:shoes_flutter_app/helpers/helpers.dart';
import 'package:shoes_flutter_app/widgets/widgets.dart';
import 'package:animate_do/animate_do.dart';

// Detalle del producto seleccionado
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Cambiar la barra de estado a color osucro
    changeStatusBarLight();

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              // Vista previa del producto
              // ? Hero se utiliza para crear animaciones de transición fluidas entre dos widgets en diferentes rutas o páginas.
              // Cuando se envuelve un widget con Hero, Flutter animará automáticamente la transición de ese widget desde su posición en una página a su posición en otra página. Esto crea efectos visuales agradables, especialmente cuando el mismo widget aparece en diferentes partes de la interfaz de usuario o en diferentes páginas.
              // Para utilizar Hero, debes envolver el mismo widget con el mismo identificador en ambas rutas, el tag debe ser único dentro del árbol de widgets en cada ruta
              const Hero(
                tag: 'preview-product-banner',
                // Envolver el widget hijo de Hero con Material puede ayudar a proporcionar un contexto de diseño más estable y consistente durante la transición de Hero, lo que puede ayudar a evitar pequeñas discrepancias visuales
                child: Material(
                  child: Preview(fullscreen: true),
                ),
              ),
              // Botón para regresar a la pantalla anterior
              Positioned(
                top: 50,
                left: 8,
                child: FloatingActionButton(
                  onPressed: () {
                    // Navegar a la pantalla anterior
                    Navigator.pop(context);
                    // Cuando se regresa a una pantalla anterior, el build no se vuelve a ejecutar por que la pantalla o widget ya existe y se enceuntra apilado en el historial de navegación
                    changeStatusBarDark();
                  },
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                  child: const Icon(
                    Icons.chevron_left,
                    size: 36,
                  ),
                ),
              ),
            ],
          ),
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
                    child: Row(
                      children: [
                        const Text(
                          '\$180.00',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        const Spacer(),
                        // Animar el botón de agregar el carrito
                        Bounce(
                          duration: const Duration(seconds: 1),
                          child: const Button(
                            'Agregar al carrito',
                            paddingVertical: 10,
                            paddingHorizontal: 22,
                          ),
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
