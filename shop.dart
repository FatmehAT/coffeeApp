import 'package:coffee/coffee.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({
    super.key,
  });

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  Coffee coffee = Coffee(name: '', price: 0.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coffee.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            SizedBox(height: 8),
            Text('Price: \$${coffee.price.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
