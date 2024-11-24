import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/utility/color_palette.dart';
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
          Stack(
            children: [
              CarouselSlider(
               options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                   onPageChanged: (int page, _) {
                  _selectedSlider.value = page;
                },
              ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 220, 220, 220),
                              Colors.white,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: const Center(
                          child: Icon(
                            Icons.flutter_dash,
                            size: 120.0,
                            color: Colors.blue,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
               Padding(
           padding: const EdgeInsets.only(top: 180.0),
                 child: ValueListenableBuilder(
                               valueListenable: _selectedSlider,
                               builder: (context, value, _) {
                  List<Widget> list = [];
                  for (int i = 0; i < 5; i++) {
                    list.add(
                      Container(
                        width: 12,
                        height: 12,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: value == i ? AppColor.primaryColor : Colors.white),
                      ),
                    );
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: list,
                  );
                               },
                             ),
               ),
            ],
          ),
        ],
      ),
    );
  }
}
