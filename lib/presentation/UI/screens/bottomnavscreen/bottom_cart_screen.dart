import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/cart_list_iteam_widget.dart';
import 'package:flutter/material.dart';

class BottomCartScreen extends StatelessWidget {
  const BottomCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Cart'),
      ),
      body: ListView.builder(  
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CartListItem();
        },
      ),
    );
  }
}