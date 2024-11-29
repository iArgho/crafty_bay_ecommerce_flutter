import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/productdetailswidget/product_color.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/productdetailswidget/product_details_slider.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/productdetailswidget/product_size.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/productdetailswidget/product_specification_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key});
  final ValueNotifier<int> _selectedSlider = ValueNotifier(0);
  final ValueNotifier<int> _selectedIteam = ValueNotifier(0);
  final ValueNotifier<int> _selectedSize = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    final List<String> sizes = ['X', 'XL', '2L', 'XXL'];

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Product Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductDetailsSlider(selectedSlider: _selectedSlider),
          const ProductSpecificationBar(),
          const SizedBox(height: 6),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Color',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ProductColor(selectedIteam: _selectedIteam),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Text(
              'Size',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          ProductSize(selectedSize: _selectedSize, sizes: sizes),
              const SizedBox(height: 14),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0,),
            child: Text(
              'Description',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0,),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip exea commodo consequat. Duis aute irure dolor in reprehenderit in voluptat.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}