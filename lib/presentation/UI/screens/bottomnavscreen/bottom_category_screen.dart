import 'package:flutter/material.dart';

class BottomCategoryScreen extends StatelessWidget {
  const BottomCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Explore Categories',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}