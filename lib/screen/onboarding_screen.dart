import 'package:flutter/material.dart';
import 'package:practice/introScreen/into_screen1.dart';
import 'package:practice/introScreen/into_screen2.dart';
import 'package:practice/introScreen/intro_screen3.dart';
import 'package:practice/screen/welcome_screen.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const [
            IntroScreen1(),
            IntroScreen2(),
            IntroScreen3(),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  _controller.jumpToPage(2);
                },
                child: const Text("Skip"),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
              ),
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Welcomescreen();
                        }));
                      },
                      child: const Text("Done"))
                  : GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: const Text("Next"))
            ],
          ),
        )
      ],
    ));
  }
}
