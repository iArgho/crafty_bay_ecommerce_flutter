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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Item 1'),
              subtitle: Text('Price: \$10.00'),
              trailing: Text('Qty: 1'),
            ),
            const Divider(),
        
          ],
        ),
      ),
    );
  }
}