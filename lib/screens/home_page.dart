import 'package:flutter/material.dart';
import 'package:shoes_flutter_app/widgets/widgets.dart';

// Pantalla - Página principal
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Barra de título personalizada
            CustomAppBar(title: 'Para tí'),
            // Vista previa del producto
            Preview(),
          ],
        ),
      ),
    );
  }
}
