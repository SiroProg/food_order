import 'package:food_order/src/features/pages/welcome_page/second_page.dart';
import 'package:food_order/src/features/pages/welcome_page/first_page.dart';
import 'package:food_order/src/features/pages/welcome_page/third_page.dart';
import 'package:flutter/material.dart';

import '../location_page/location_view.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Stack(children: [
              // const Positioned(
              //   top: -40,
              //   right: 40,
              //   child: Opacity(
              //     opacity: 0.6,
              //     child: Image(
              //       width: 310,
              //       height: 310,
              //       image: AssetImage("assets/images/jahongir3.png"),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: PageView(
                    children: const [
                      FirstPage(),
                      SecondPage(),
                      ThirdPage(),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30, right: 20, left: 20),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (value) => const LocationView(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text(
                  "Продолжить",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyPageView(),
//     );
//   }
// }

// class MyPageView extends StatefulWidget {
//   @override
//   _MyPageViewState createState() => _MyPageViewState();
// }

// class _MyPageViewState extends State<MyPageView> {
//   final PageController _controller = PageController(initialPage: 0);
//   final List<Widget> _pages = [
//     Container(
//       color: Colors.red,
//       child: Center(
//         child: Text(
//           'Bet 1',
//           style: TextStyle(fontSize: 24, color: Colors.white),
//         ),
//       ),
//     ),
//     Container(
//       color: Colors.green,
//       child: Center(
//         child: Text(
//           'Bet 2',
//           style: TextStyle(fontSize: 24, color: Colors.white),
//         ),
//       ),
//     ),
//     Container(
//       color: Colors.blue,
//       child: Center(
//         child: Text(
//           'Bet 3',
//           style: TextStyle(fontSize: 24, color: Colors.white),
//         ),
//       ),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PageView Example'),
//       ),
//       body: SizedBox(
//         width: double.infinity,
//         height: 200,
//         child: PageView(
//           controller: _controller,
//           children: _pages,
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
