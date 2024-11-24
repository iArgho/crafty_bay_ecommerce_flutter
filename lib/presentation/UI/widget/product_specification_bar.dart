import 'package:crafty_bay_ecommerce_flutter/presentation/utility/color_palette.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

class ProductSpecificationBar extends StatelessWidget {
  const ProductSpecificationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Happy New Year Seles', style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),),
          ),
        Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.star, color: Colors.amber),
        SizedBox(width: 4,),
        Text(
          '4.8',
          style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 25,),
        Text(
          'Reviews',
          style: TextStyle(color: AppColor.primaryColor, fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 4,),
            Icon(Icons.favorite, color: AppColor.primaryColor),
      ],
    ),
        ],
      ),
      const Spacer(
        
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InputQty(
            decoration: const QtyDecorationProps(
                    qtyStyle: QtyStyle.classic,
             ),
              maxVal: 100,
              initVal: 0,
              minVal: -100,
              steps: 1,
              onQtyChanged: (val) {
                if (kDebugMode) {
                  print(val);
                }
              },
            ),
        ),
      ),
      
    ],);
  }
}

