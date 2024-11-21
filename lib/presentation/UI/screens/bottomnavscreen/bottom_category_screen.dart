import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/category_card.dart';
import 'package:flutter/material.dart';

class BottomCategoryScreen extends StatelessWidget {
  const BottomCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CategoryCard();
        },
      ),
    );
  }
}
