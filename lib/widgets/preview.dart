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
          _Product(),
          // Tallas
          _Sizes()
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
          // Sombra
          Positioned(
            bottom: 20,
            left: 30,
            right: 0,
            child: _Shadow(),
          ),
          // Producto
          // La imagen ocupará el 85% del ancho de su contenedor padre
          FractionallySizedBox(
            widthFactor: 0.85,
            child: Image(image: AssetImage('assets/images/azul.png')),
          )
        ],
      ),
    );
  }
}

// Sombra - Se recomienda que venga adjunta en la imagen
class _Shadow extends StatelessWidget {
  const _Shadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Rotar sombra
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(
              color: Color(0xffeaa14e),
              blurRadius: 40,
            )
          ],
        ),
      ),
    );
  }
}

// Listado de tallas disponibles
class _Sizes extends StatelessWidget {
  const _Sizes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(8),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _Size(7),
          _Size(7.5),
          _Size(8),
          _Size(8.5),
          _Size(9),
          _Size(9.5),
        ],
      ),
    );
  }
}

// Badge para una talla o número en particular
class _Size extends StatelessWidget {
  const _Size(
    this.size, {
    super.key,
  });
  final double size;

  @override
  Widget build(BuildContext context) {
    // Retirar parte deci
    final sizeFormatted = size.toString().replaceAll('.0', '');
    return Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      width: 34,
      height: 34,
      decoration: BoxDecoration(
          color: sizeFormatted == '9' ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: sizeFormatted == '9'
              ? [
                  const BoxShadow(
                      color: Color.fromARGB(255, 229, 138, 0),
                      offset: Offset(0, 5),
                      blurRadius: 5)
                ]
              : null),
      child: Text(
        sizeFormatted,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: sizeFormatted == '9' ? Colors.white : const Color(0xfff1a23a),
        ),
      ),
    );
  }
}
