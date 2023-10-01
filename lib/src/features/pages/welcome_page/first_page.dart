import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/courier.png',
          width: 300,
          height: 300,
        ),
        const SizedBox(
          width: 280,
          height: 40,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                "Бесплатная доставка",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
        const Text(
          "из любимых ресторанов",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        )
      ],
    );
  }
}
