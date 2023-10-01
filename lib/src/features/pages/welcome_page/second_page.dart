import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/motobike.png',
          width: 300,
          height: 300,
        ),
        const SizedBox(
          width: 120,
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
                "Быстро",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
        const Text(
          "привезем вкусную еду",
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
