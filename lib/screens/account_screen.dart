import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: const Text(
        'Account Screen',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w800,
          fontFamily: 'Mulish',
          color: Color(0xff252525),
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
