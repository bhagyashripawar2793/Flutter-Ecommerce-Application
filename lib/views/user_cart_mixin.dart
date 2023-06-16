import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_usecase/models/product.dart';

class UserCart with ChangeNotifier {
  List<Product> _products = [];

  List<Product> get products => _products;

  double get totalPrice =>
      products.fold(0, (total, currentProduct) => total + currentProduct.price);

  void addProductToCart(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void removeProductFromCart(Product product) {
    _products.remove(product);
    notifyListeners();
  }
}
