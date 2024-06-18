import 'package:flutter/material.dart';
import 'package:mock_project/screens/slide_screen.dart';
import 'package:mock_project/widgets/constant.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SlideScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffff3951),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/images/welcome.png',
        width: 249 * getScreenWidth(context) / designWidth,
        height: 220.16 * getScreenHeight(context) / designHeight,
      ),
    );
  }
}
