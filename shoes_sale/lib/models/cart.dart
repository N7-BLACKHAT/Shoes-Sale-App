import 'package:flutter/material.dart';
import 'package:shoes_sale/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of item for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Jordan 7 Retro SP',
        price: '20295',
        description:
            'Inspired by the game shoe worn by Mike throughout the 92 season',
        imagePath: 'lib/images/Jordan7RetroSP.png'),
    Shoe(
        name: 'Jordan Courtside 23',
        price: '10107',
        description:
            'Inspired by the 30th anniversary of the iconic Air Jordan 3',
        imagePath: 'lib/images/jordancourtside23.png'),
    Shoe(
        name: 'Air Zoom Flight 95',
        price: '15995',
        description: "It's no dream—it's your ticket to turning heads.",
        imagePath: 'lib/images/AirZoomFlight95.png'),
    Shoe(
        name: 'Air max 270',
        price: '14995',
        description: "The perfect go-to for warm-weather fun",
        imagePath: 'lib/images/AirMax270.png'),
    Shoe(
        name: 'Jordan Max Aura 4',
        price: '11295',
        description:
            "Take flight on the court with timeless style and cloud-like heel support",
        imagePath: 'lib/images/JordanAuraMax4.png'),
    Shoe(
        name: 'Free Metcon 5',
        price: '10795',
        description:
            "Perfect for flying through a cardio day or enhancing your agility",
        imagePath: 'lib/images/FreeMetcon5.png'),
    Shoe(
        name: 'Kd Trey 5 X Ep',
        price: '8495',
        description:
            "A secure midfoot strap is suited for scoring binges and defensive stands",
        imagePath: 'lib/images/Kd_Trey_5_Ep.png'),
  ];
  
  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
  //show total price
  // String calculateTotal() {
  //   double totalPrice = 0;
  //   for (int i = 0; i < userCart.length; i++) {
  //     totalPrice += double.parse(userCart[i][1]); //1 for price index in list
  //   }
  //   return totalPrice.toStringAsFixed(2);
  // }
}
