import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
            child: _Color(color: Color(0xffc6d642), index: 4),
          ),
          Positioned(
            left: 54,
            child: _Color(color: Color(0xffffad29), index: 3),
          ),
          Positioned(
            left: 27,
            child: _Color(color: Color(0xff2099f1), index: 2),
          ),
          _Color(color: Color(0xff364d56), index: 1),
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
  });
  final Color color;
  // Propiedad que permite controlar el orden de la animación para este widget
  final int index;

  @override
  Widget build(BuildContext context) {
    // Animación del indicador de color
    return FadeInLeft(
      delay: Duration(milliseconds: 200 * index),
      duration: const Duration(milliseconds: 400),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(100),
        child: InkWell(
          onTap: () {},
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
