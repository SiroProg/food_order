import 'package:food_order/src/features/pages/welcome_page/second_page.dart';
import 'package:food_order/src/features/pages/welcome_page/first_page.dart';
import 'package:food_order/src/features/pages/welcome_page/third_page.dart';
import 'package:food_order/src/common/styles/app_colors.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Stack(
            children: [
              SizedBox(
                width: 300,
                height: 200,
                child: ColoredBox(color: Colors.blueAccent),
              ),
              PageView(
                children: [
                  FirstPage(),
                  SecondPage(),
                  ThirdPage(),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 15,
              left: 20,
              right: 20,
            ),
            child: InkWell(
              onTap: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 50,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.purple,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Davom etish",
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
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
