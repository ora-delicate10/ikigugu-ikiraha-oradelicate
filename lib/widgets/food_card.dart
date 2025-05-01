import 'package:flutter/material.dart';
import '../models/food_item.dart';

class FoodCard extends StatelessWidget {
  final FoodItem item;
  final VoidCallback onAdd;

  const FoodCard({super.key, required this.item, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      child: ListTile(
        leading: Image.network(item.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.deepOrange)),
        subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
        trailing: ElevatedButton(
          onPressed: onAdd,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
          ),
          child: const Text("Add", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
