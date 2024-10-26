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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: SvgPicture.asset(ImagePath().logo),
            ),
            Text(
              'Welcome Back',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 24,
                  ),
            ),
            Text(
              'Please Enter Your Email Address',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.grey,
                  ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                disabledBorder: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Next'),
            ),
          ],
        )),
      ),
    );
  }
}
