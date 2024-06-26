import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_flutter_app/providers/product_provider.dart';

// Vista previa
class Preview extends StatelessWidget {
  const Preview({super.key, this.fullscreen = false});
  // Determina el comportamiento visual de este widget
  final bool fullscreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: (fullscreen)
          ? const EdgeInsets.all(0)
          : const EdgeInsets.symmetric(horizontal: 24),
      padding: (fullscreen)
          ? const EdgeInsets.symmetric(vertical: 40, horizontal: 16)
          : const EdgeInsets.all(16),
      width: double.infinity,
      // Especificar alturas
      height: (fullscreen) ? 380 : 350,
      decoration: BoxDecoration(
        color: const Color(0xffffcf53),
        borderRadius: (fullscreen)
            ? const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              )
            : BorderRadius.circular(50),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Imagen del producto
          const _Product(),
          // Tallas
          if (!fullscreen) const _Sizes()
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
    // Solicitar la instancia del provider encargado de la gestión de los productos
    final productProvider = Provider.of<ProductProvider>(context);

    return Container(
      child: Stack(
        children: [
          // Sombra
          const Positioned(
            bottom: 20,
            left: 30,
            right: 0,
            child: _Shadow(),
          ),
          // Producto
          // La imagen ocupará el 85% del ancho de su contenedor padre
          FractionallySizedBox(
            widthFactor: 0.85,
            child: Image(image: AssetImage(productProvider.image)),
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
    // Recuoperar instancia de mi provider referente al producto
    final productProvider = Provider.of<ProductProvider>(context);
    // Retirar parte decimal
    final sizeFormatted = size.toString().replaceAll('.0', '');
    return GestureDetector(
      onTap: () {
        // cambiar la talla seleccionada
        productProvider.size = size;
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        width: 34,
        height: 34,
        decoration: BoxDecoration(
            color:
                sizeFormatted == '${productProvider.size}'.replaceAll('.0', '')
                    ? Colors.orange
                    : Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow:
                sizeFormatted == '${productProvider.size}'.replaceAll('.0', '')
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
            color:
                sizeFormatted == '${productProvider.size}'.replaceAll('.0', '')
                    ? Colors.white
                    : const Color(0xfff1a23a),
          ),
        ),
      ),
    );
  }
}
