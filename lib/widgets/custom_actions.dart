import 'package:flutter/material.dart';

// Contenedor de botones de acción (Me gusta, Agregado al carrito, configuración)
class CustomActions extends StatelessWidget {
  const CustomActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.only(bottom: 40, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const _Action(
            icon: Icons.star,
            color: Colors.red,
          ),
          _Action(
            icon: Icons.shopping_cart,
            color: Colors.grey.withOpacity(0.3),
          ),
          _Action(
            icon: Icons.settings,
            color: Colors.grey.withOpacity(0.3),
          )
        ],
      ),
    );
  }
}

// Botón de acción
class _Action extends StatelessWidget {
  const _Action({
    super.key,
    // Requiere icono a mostrar y color
    required this.icon,
    required this.color,
  });
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200]!,
            offset: const Offset(0, 5),
            blurRadius: 7,
            spreadRadius: 1,
          )
        ],
      ),
      // El contendor tiene sombra, por tanto Material debe ser hijo directo del container para lograr mostrar el efecto de ripple
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(100),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          splashColor: Colors.amber.withOpacity(0.5),
          child: Icon(icon, color: color),
          onTap: () {},
        ),
      ),
    );
  }
}
