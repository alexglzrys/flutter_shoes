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
          Positioned(left: 81, child: _Color(color: Color(0xffc6d642))),
          Positioned(left: 54, child: _Color(color: Color(0xffffad29))),
          Positioned(left: 27, child: _Color(color: Color(0xff2099f1))),
          _Color(color: Color(0xff364d56)),
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
  });
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
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
    );
  }
}
