import 'package:flutter/material.dart';
import '../models/shop.dart';
import '../widgets/shop_card.dart';
import 'menu_screen.dart'; 

class ShopsScreen extends StatelessWidget {
  final List<Shop> shops = [
    Shop(
      name: 'Fast Bite',
      tagline: 'Hot meals in minutes',
      imageUrl: 'https://i.imgur.com/CT9v2XM.jpg',
    ),
    Shop(
      name: 'Rwandan Flavors',
      tagline: 'Traditional & Tasty',
      imageUrl: 'https://i.imgur.com/bI3AOv5.jpg',
    ),
    Shop(
      name: 'Burger Zone',
      tagline: 'Burgers you’ll crave!',
      imageUrl: 'https://i.imgur.com/XzCz6N5.jpg',
    ),
  ];

  ShopsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFBFA), // light background
      body: SafeArea(
        child: Column(
          children: [
            // 🔶 Logo Header
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.asset('assets/logo.png', width: 50),
                  const SizedBox(width: 10),
                  const Text(
                    'Ikiraha',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),

            // 🔶 Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Choose a Shop',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),

            // 🔶 Shop List
            Expanded(
              child: ListView.builder(
                itemCount: shops.length,
                itemBuilder: (context, index) {
                  return ShopCard(
  shop: shops[index],
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MenuScreen(shop: shops[index]),
      ),
    );
  },
);

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
