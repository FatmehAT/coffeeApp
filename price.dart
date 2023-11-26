import 'package:flutter/material.dart';

class TotalPricePage extends StatelessWidget {
  final double totalPrice;

  const TotalPricePage({Key? key, required this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double totalPriceWithTax = totalPrice * 1.05;

    return Scaffold(
      body: Container(
        color: Colors.purple,
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            '\$${totalPriceWithTax.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
