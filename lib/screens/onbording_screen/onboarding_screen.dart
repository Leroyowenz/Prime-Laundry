import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../entry_screen/welcome_screen.dart';
import 'page1.dart';
import 'page2.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: ((index) {
              setState(() {
                onLastPage = (index == 1);
              });
            }),
            children: const [
              OnboardingPage1(),
              OnboardingPage2(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.7),
            child: SmoothPageIndicator(controller: _controller, count: 2),
          ),
          Container(
            alignment: const Alignment(0, 1),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: const Text("Skip"),
                  ),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ),
                            );
                          },
                          child: const Icon(Icons.arrow_forward),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Icon(Icons.arrow_forward),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
