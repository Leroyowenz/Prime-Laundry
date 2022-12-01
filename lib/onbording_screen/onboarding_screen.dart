import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../screens/momylaundry_screen.dart';
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

// class OnboardingPage1 extends StatelessWidget {
//   const OnboardingPage1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           const SizedBox(height: 70.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset("assets/images/iconicon.png"),
//               Image.asset("assets/images/Momy Laudry.png"),
//             ],
//           ),
//           const SizedBox(height: 70.0),
//           Image.asset("assets/images/Frameimage2.png"),
//           const SizedBox(height: 30.0),
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(
//               "All Types of Clothes",
//               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(
//                 "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur iusto, velit? Voluptates ex molestias excepturi, dolorum magni qui eius non, repellat id consequuntur, eos magnam sit fuga? Delectus error, beatae."),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class OnboardingPage2 extends StatelessWidget {
//   const OnboardingPage2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           const SizedBox(height: 70.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset("assets/images/iconicon.png"),
//               Image.asset("assets/images/Momy Laudry.png"),
//             ],
//           ),
//           const SizedBox(height: 70.0),
//           Image.asset("assets/images/Frameimage3.png"),
//           const SizedBox(height: 30.0),
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(
//               "Professional Walk",
//               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text(
//                 "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur iusto, velit? Voluptates ex molestias excepturi, dolorum magni qui eius non, repellat id consequuntur, eos magnam sit fuga? Delectus error, beatae."),
//           ),
//         ],
//       ),
//     );
//   }
// }
