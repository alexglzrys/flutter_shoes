import 'package:flutter/material.dart';
import 'package:shoes_flutter_app/widgets/widgets.dart';

// Contenedor de Precio y Botón de compra
class Price extends StatelessWidget {
  const Price(this.price, {super.key});
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(18),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.15),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Precio
          Text(
            '\$$price',
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          // Botón de compra
          const Button('Agregar al carrito')
        ],
      ),
    );
  }
}
