import 'package:flutter/material.dart';

// Provider para la gestión del estado global de los productos
class ProductProvider extends ChangeNotifier {
  String _image = 'assets/images/azul.png';
  double _size = 9;

  String get image => _image;
  set image(String value) {
    _image = value;
    notifyListeners();
  }

  double get size => _size;
  set size(double value) {
    _size = value;
    notifyListeners();
  }
}
