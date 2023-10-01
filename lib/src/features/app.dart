import 'package:food_order/src/features/pages/welcome_page/welocome_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food delivery Sayram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "Signika",
      ),
      home: const WelcomePage(),
    );
  }
}
