import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/product_details_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
   ProductDetailsScreen({super.key});
  final ValueNotifier<int> _selectedSlider = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Product Details'),
      ),
      body: Column(
        children: [
          ProductDetailsSlider(selectedSlider: _selectedSlider),
        ],
      ),
    );
  }
}

