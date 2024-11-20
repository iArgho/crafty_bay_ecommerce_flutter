import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/product_card.dart';
import 'package:flutter/material.dart';

class BottomHomeScreen extends StatelessWidget {
  const BottomHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          childAspectRatio: 1 / 1.16,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
      ),
    );
  }
}