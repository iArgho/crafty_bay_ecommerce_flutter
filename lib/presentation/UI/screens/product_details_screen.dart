import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/product_details_slider.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/product_specification_bar.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/utility/color_palette.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key});
  final ValueNotifier<int> _selectedSlider = ValueNotifier(0);
  final ValueNotifier<int> _selectedIteam = ValueNotifier(0);
  final ValueNotifier<int> _selectedSize = ValueNotifier(0); // To track selected size

  @override
  Widget build(BuildContext context) {
    // List of sizes
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: ValueListenableBuilder(
              valueListenable: _selectedIteam,
              builder: (context, value, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(5, (index) {
                    return GestureDetector(
                      onTap: () {
                        _selectedIteam.value = index; // Update selected color
                      },
                      child: Container(
                        width: 24,
                        height: 24,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: value == index
                              ? AppColor.primaryColor // Selected color
                              : [Colors.red, Colors.yellow, Colors.green, Colors.blue, Colors.purple][index],
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ValueListenableBuilder(
              valueListenable: _selectedSize,
              builder: (context, value, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(sizes.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        _selectedSize.value = index; // Update selected size
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: value == index ? AppColor.primaryColor : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(6),
                          color: value == index ? AppColor.primaryColor : Colors.white,
                        ),
                        child: Text(
                          sizes[index],
                          style: TextStyle(
                            color: value == index ? Colors.white : Colors.black87,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}