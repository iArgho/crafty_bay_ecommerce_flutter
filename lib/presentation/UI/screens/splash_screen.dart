import 'package:crafty_bay_ecommerce_flutter/presentation/UI/screens/home_screen.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/utility/path_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  void goToNextScreen() {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
        (route) => false, // This condition removes all previous routes
      );
    });
  }

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
