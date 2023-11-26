import 'package:flutter/material.dart';
import 'coffee.dart';
import 'items.dart';
import 'price.dart';

class CoffeeShop extends StatefulWidget {
  const CoffeeShop({Key? key});

  @override
  State<CoffeeShop> createState() => _CoffeeShopState();
}

class _CoffeeShopState extends State<CoffeeShop> {
  List<Coffee> coffeeItems = [
    Coffee(
      name: 'American',
      description: 'Black coffee from Colombian coffee beans.',
      price: 4,
    ),
    Coffee(
      name: 'Espresso',
      description: 'A shot of strong black coffee.',
      price: 2,
    ),
    Coffee(
      name: 'Latte',
      description:
          'Coffee with steamed milk and foam in addition to a shot of vanilla.',
      price: 5,
    ),
    Coffee(
      name: 'Mocha',
      description: 'Coffee with steamed milk.',
      price: 5,
    ),
  ];

  List<Coffee> cart = [];

  void navigateToTotalPricePage() {
    double totalPrice = cart.fold(0, (sum, coffee) => sum + coffee.price);
    double totalPriceWithTax = totalPrice * 1.05;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TotalPricePage(totalPrice: totalPriceWithTax),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Shop'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: navigateToTotalPricePage,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: coffeeItems.length,
        itemBuilder: (context, index) {
          return Items(
            coffee: coffeeItems[index],
            onAddToCart: () {
              setState(() {
                cart.add(coffeeItems[index]);
              });
            },
          );
        },
      ),
    );
  }
}
