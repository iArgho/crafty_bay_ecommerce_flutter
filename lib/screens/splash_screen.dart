import 'package:crafty_bay_ecommerce_flutter/utility/path_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SvgPicture.asset(ImagePath().logo),
            ),
          ),
          const CircularProgressIndicator(
            semanticsLabel: 'Circular progress indicator',
          ),
          const SizedBox(
            height: 7,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text('Version 1.0'),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
