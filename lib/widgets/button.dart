import 'package:flutter/material.dart';

// Widget para representar un botón
class Button extends StatelessWidget {
  const Button(
    this.text, {
    super.key,
    this.paddingHorizontal = 20,
    this.paddingVertical = 12,
    this.fn,
  });
  final String text;
  // tarea opcional a ejecutar al presionar el botón
  final Function? fn;
  // Propiedades para personalizar el padding del botón (tamaño)
  final double paddingHorizontal;
  final double paddingVertical;

  @override
  Widget build(BuildContext context) {
    // El botón tiene un color de fondo, por tanto hay que definir el color en el widget de Material y el contenendor dejarlo en transparente. De lo contrario el efecto de ripple no será visible
    return Material(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(100),
      // El contenedor del botón será clickeable
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        splashColor: Colors.white.withOpacity(0.3),
        onTap: () {
          if (fn != null) {
            fn!();
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: paddingVertical, horizontal: paddingHorizontal),
          decoration: BoxDecoration(
            // Si se especifica un color, este se colocará por encima del efecto de ripple
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
