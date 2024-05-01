import 'package:flutter/services.dart' as services;

// Helper para cambiar el color de la barra de estado a tono claro
void changeStatusBarLight() {
  services.SystemChrome.setSystemUIOverlayStyle(
      services.SystemUiOverlayStyle.light);
}

// Helper para cambiar el color de la barra de estado a tono oscuro
void changeStatusBarDark() {
  services.SystemChrome.setSystemUIOverlayStyle(
      services.SystemUiOverlayStyle.dark);
}
