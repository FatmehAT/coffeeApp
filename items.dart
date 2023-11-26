import 'package:flutter/material.dart';
import 'coffee.dart';

class Items extends StatefulWidget {
  const Items({super.key, required this.coffee, required this.onAddToCart});
  final Coffee coffee;
  final VoidCallback onAddToCart;
  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  bool isAddedToCart = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.coffee.name),
      subtitle: Text('\$${widget.coffee.price.toStringAsFixed(2)}'),
      trailing: IconButton(
        icon: Icon(isAddedToCart ? Icons.check : Icons.add_shopping_cart),
        onPressed: () {
          setState(() {
            isAddedToCart = !isAddedToCart;
          });
          widget.onAddToCart();
        },
      ),
    );
  }
}
