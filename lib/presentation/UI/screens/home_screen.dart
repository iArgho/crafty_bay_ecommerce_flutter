import 'package:crafty_bay_ecommerce_flutter/presentation/UI/widget/circular_icon_button.dart';
import 'package:crafty_bay_ecommerce_flutter/presentation/utility/path_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            CircularIconButton(
              icon: Icons.phone_iphone_outlined,
              onTap: () {},
            ),
            CircularIconButton(
              icon: Icons.notification_add_outlined,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
