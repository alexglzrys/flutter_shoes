import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_flutter_app/providers/product_provider.dart';

// Contenedor de colores disponibles
class CustomColors extends StatelessWidget {
  const CustomColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.only(bottom: 32),
      width: double.infinity,
      child: const Stack(
        children: [
          Positioned(
            left: 81,
            child: _Color(
              color: Color(0xffc6d642),
              index: 4,
              image: 'assets/images/verde.png',
            ),
          ),
          Positioned(
            left: 54,
            child: _Color(
              color: Color(0xffffad29),
              index: 3,
              image: 'assets/images/amarillo.png',
            ),
          ),
          Positioned(
            left: 27,
            child: _Color(
              color: Color(0xff2099f1),
              index: 2,
              image: 'assets/images/azul.png',
            ),
          ),
          _Color(
            color: Color(0xff364d56),
            index: 1,
            image: 'assets/images/negro.png',
          ),
        ],
      ),
    );
  }
}

// Circulo indicador de color disponible
class _Color extends StatelessWidget {
  const _Color({
    super.key,
    required this.color,
    required this.index,
    required this.image,
  });
  final Color color;
  // Propiedad que permite controlar el orden de la animación para este widget
  final int index;
  // Imagen de producto asociada a este widget
  final String image;

  @override
  Widget build(BuildContext context) {
    // Solictar la instancia del provider encargado de la gestión de los productos
    final productProvider = Provider.of<ProductProvider>(context);

    // Animación del indicador de color
    return FadeInLeft(
      delay: Duration(milliseconds: 200 * index),
      duration: const Duration(milliseconds: 400),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(100),
        child: InkWell(
          onTap: () {
            // Establecer la nueva imagen del producto con el color seleccionado
            productProvider.image = image;
          },
          borderRadius: BorderRadius.circular(100),
          child: Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
