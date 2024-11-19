import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/category_card.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/circular_icon_button.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/home_sider.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/product_card.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/section_header.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/utility/path_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(ImagePath().logoNav),
            const Spacer(),
            CircularIconButton(
              icon: Icons.person_outlined,
              onTap: () {},
            ),
            const SizedBox(width: 8),
            CircularIconButton(
              icon: Icons.phone_iphone_outlined,
              onTap: () {},
            ),
            const SizedBox(width: 8),
            CircularIconButton(
              icon: Icons.notification_add_outlined,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Icon(
                      Icons.search,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  hintText: 'Search',
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
              const SizedBox(height: 16),
              HomeSlider(),
              const SizedBox(height: 8),
              SectionHeader(
                title: 'Categories',
                onTap: () {},
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const CategoryCard();
                  },
                ),
              ),
              SectionHeader(
                title: 'Popular',
                onTap: () {},
              ),
              SizedBox(
                height: 142,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ProductCard();
                  },
                ),
              ),
              SectionHeader(
                title: 'Special',
                onTap: () {},
              ),
              SizedBox(
                height: 142,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ProductCard();
                  },
                ),
              ),
              SectionHeader(
                title: 'New',
                onTap: () {},
              ),
              SizedBox(
                height: 142,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ProductCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
