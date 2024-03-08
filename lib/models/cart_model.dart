import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List of items in the shop
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color]
    ['Avocado', 4.0, 'lib/images/avocado.png', Colors.green],
    ['Banana', 4.0, 'lib/images/banana.png', Colors.yellow],
    ['Chicken', 4.0, 'lib/images/chicken.png', Colors.brown],
    ['Water', 4.0, 'lib/images/water.png', Colors.blue],
  ];

  // List of items in the cart
  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotalPrice() {
    double totalPrice = 0;

    for (var item in _cartItems) {
      totalPrice += item[1];
    }

    return totalPrice.toStringAsFixed(2);
  }
}
