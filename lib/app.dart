import 'package:crafty_bay_ecommerce_flutter/presentation/utility/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/UI/screens/splash_screen.dart';

void main() {
  runApp(const CraftyBay());
}

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CraftyBay',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primaryColor: const Color(0xFF07ADAE),
          primarySwatch: MaterialColor(0xFF07ADAE, ColorPalette().color),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Color(0xFF07ADAE))),
      home: const SplashScreen(),
    );
  }
}
