
import 'package:flutter/material.dart';

class BottomCartScreen extends StatelessWidget {
  const BottomCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Your Cart is Empty',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}