import 'package:crafty_bay_ecommerce_flutter/presentation/utility/path_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: SvgPicture.asset(ImagePath().logo),
          ),
          Text('Welcome Back'),
          Text('Please Enter Your Email Address'),
          TextField(),
          ElevatedButton(onPressed: () {}, child: Text('Next')),
        ],
      )),
    );
  }
}
