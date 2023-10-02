import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  ShoppingCart cart = ShoppingCart();
  print('Shopping Cart Program');
  int choice = 0;

  while (choice != 3) {
    print('1. Add item to cart');
    print('2. View cart');
    print('3. Exit');
    stdout.write('Enter your choice: ');
    String? option = stdin.readLineSync();
    if(option != null) {
      choice = int.parse(option);
      if (choice == 1) {
        stdout.write('Enter the item to add to the cart: ');
        String? item = stdin.readLineSync();
        if(item!= null)
        {
          cart.addItem(item);
        }
      } else if (choice == 2) {
        cart.viewCart();
      } else if (choice == 3) {
        print('Exiting the program. Thank you!');
      } else {
        print('Invalid choice. Please try again!');
      }
    }
  }
}

class ShoppingCart {
  List<String> items = [];

  void addItem(String item) {
    items.add(item);
    print('Item added to the cart.');
  }

  void viewCart() {
    print('Items in the cart are:');
    for (var i = 0; i < items.length; i++) {
      print('${i + 1}. ${items[i]}');
    }
  }
}
