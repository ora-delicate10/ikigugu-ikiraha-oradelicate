import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../models/shop.dart';
import '../widgets/food_card.dart';


class MenuScreen extends StatelessWidget {
  final Shop shop;

  MenuScreen({super.key, required this.shop});

  final List<FoodItem> foodList = [
    FoodItem(name: 'Cheeseburger', price: 5.99, imageUrl: 'https://i.imgur.com/vA3E3vK.png'),
    FoodItem(name: 'Chicken Wrap', price: 4.50, imageUrl: 'https://i.imgur.com/Z7aV96E.png'),
    FoodItem(name: 'Fruit Salad', price: 3.20, imageUrl: 'https://i.imgur.com/ogwzF7G.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFBFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          shop.name,
          style: const TextStyle(color: Colors.deepOrange),
        ),
        iconTheme: const IconThemeData(color: Colors.deepOrange),
        elevation: 1,
      ),
      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          return FoodCard(
            item: foodList[index],
            onAdd: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("${foodList[index].name} added to cart")),
              );
            },
          );
        },
      ),
    );
  }
}
