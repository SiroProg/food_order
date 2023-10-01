import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/cards.png',
          width: 300,
          height: 300,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Text(
            "Принимаем карты Uzcard, Humo, Visa, Mastercard",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
