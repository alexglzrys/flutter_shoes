import 'package:flutter/material.dart';

// Vista previa
class Preview extends StatelessWidget {
  const Preview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffcf53),
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Column(
        children: [
          // Imagen del producto
          _Product()
          // Todo: Tallas
        ],
      ),
    );
  }
}

// Imagen del producto con sombra
class _Product extends StatelessWidget {
  const _Product({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Stack(
        children: [
          // Producto
          // La imagen ocupará el 85% del ancho de su contenedor padre
          FractionallySizedBox(
            widthFactor: 0.85,
            child: Image(image: AssetImage('assets/images/azul.png')),
          )
          // Todo: Sombra
        ],
      ),
    );
  }
}
