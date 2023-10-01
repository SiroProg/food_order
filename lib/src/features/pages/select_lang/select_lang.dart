import 'package:food_order/src/features/pages/welcome_page/welocome_page.dart';
import 'package:food_order/src/common/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SelectLang extends StatefulWidget {
  const SelectLang({super.key});

  @override
  State<SelectLang> createState() => _SelectLangState();
}

class _SelectLangState extends State<SelectLang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const SizedBox(
              width: 200,
              height: 120,
              child: ColoredBox(
                color: Colors.red,
                child: Center(
                  child: Text("LOGO"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ButtonSelectLanguge(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomePage(),
                        ),
                      );
                    },
                    text: "Русский",
                  ),
                  ButtonSelectLanguge(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomePage(),
                        ),
                      );
                    },
                    text: "Казак",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonSelectLanguge extends StatelessWidget {
  const ButtonSelectLanguge({
    super.key,
    required this.onTap,
    required this.text,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        splashColor: AppColors.white30,
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(30),
              ),
              border: Border.all(
                color: AppColors.purple,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: AppColors.purple,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
