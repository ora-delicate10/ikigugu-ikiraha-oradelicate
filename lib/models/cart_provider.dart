import 'package:flutter/material.dart';
import 'food_item.dart';

class CartProvider extends ChangeNotifier {
  final List<FoodItem> _cartItems = [];

  List<FoodItem> get cartItems => _cartItems;

  void addToCart(FoodItem item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeFromCart(FoodItem item) {
    _cartItems.remove(item);
    notifyListeners();
  }

  double get totalPrice {
    return _cartItems.fold(0, (sum, item) => sum + item.price);
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
