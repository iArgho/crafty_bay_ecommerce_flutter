import 'package:crafty_bay_ecommerce_flutter/presentation/UI/screens/bottomnavscreen/bottom_cart_screen.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/screens/bottomnavscreen/bottom_category_screen.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/screens/bottomnavscreen/bottom_home_screen.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/screens/bottomnavscreen/bottom_wish_screen';
import 'package:crafty_bay_ecommerce_flutter/presentation/utility/color_palette.dart';
import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    BottomHomeScreen(),
    BottomCategoryScreen(),
    BottomCartScreen(),
    BottomWishScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getAppBarTitle(_selectedIndex)),
        backgroundColor: AppColor.primaryColor,
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Wish',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }


  String _getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Category';
      case 2:
        return 'Cart';
      case 3:
        return 'Wish List';
      default:
        return 'Crafty Bay';
    }
  }
}


class BottomWishScreen extends StatelessWidget {
  const BottomWishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Your Wish List',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}