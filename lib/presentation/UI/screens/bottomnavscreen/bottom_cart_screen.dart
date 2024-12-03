import 'package:flutter/material.dart';

class BottomCartScreen extends StatelessWidget {
  const BottomCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Product Details',
              
            ),
          ],
        ),
      ),
     );
  }
}