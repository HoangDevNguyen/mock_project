import 'package:flutter/material.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({super.key});

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        View1(),
        View2(),
        View3(),
      ],
    );
  }
}

class View1 extends StatelessWidget {
  const View1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '1'
      ),
    );
  }
}

class View2 extends StatelessWidget {
  const View2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          '2'
      ),
    );
  }
}

class View3 extends StatelessWidget {
  const View3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          '3'
      ),
    );
  }
}
