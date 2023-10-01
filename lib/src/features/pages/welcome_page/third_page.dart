import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/cards.png'),
        const Text("third"),
      ],
    );
  }
}
