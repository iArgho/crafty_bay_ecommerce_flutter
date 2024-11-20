import 'package:flutter/material.dart';

class BottomWishScreen extends StatelessWidget {
  const BottomWishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Your Wish List',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}