import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/product_card.dart';
import 'package:flutter/material.dart';

class BottomCartScreen extends StatelessWidget {
  const BottomCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, 
          crossAxisSpacing: 8, 
          mainAxisSpacing: 8, 
          childAspectRatio: 0.8,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
      ),
    );
  }
}
