import 'package:flutter/material.dart';
import 'screens/shops_screen.dart';

void main() {
  runApp(const IkirahaApp());
}

class IkirahaApp extends StatelessWidget {
  const IkirahaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ikiraha',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color(0xFFFDFBFA),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ShopsScreen(),
    );
  }
}
