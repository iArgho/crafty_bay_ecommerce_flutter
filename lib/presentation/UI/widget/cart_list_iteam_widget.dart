import 'package:crafty_bay_ecommerce_flutter/presentation/utility/color_palette.dart';
import 'package:flutter/material.dart';

import 'product_counter_widget.dart';

class CartListItem extends StatelessWidget {
  const CartListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.shopping_cart, color: AppColor.primaryColor),
            title: Text(
              'Item Name',
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Color: Red, Size: X'),
                SizedBox(height: 4),
                Text(
                  '\$99.99',
                  style: TextStyle(color: AppColor.primaryColor, fontSize: 12),
                ),
              ],
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min, // Ensure the column fits its content
              mainAxisAlignment: MainAxisAlignment.center, // Center children vertically
              children: [
                Icon(Icons.delete, size: 20, color: Colors.red), // Adjusted size and color
             // Add spacing between icon and counter
                ProductCounter(),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}