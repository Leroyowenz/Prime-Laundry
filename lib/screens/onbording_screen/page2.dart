import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 70.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/iconicon.png"),
              Image.asset("assets/images/Momy Laudry.png"),
            ],
          ),
          const SizedBox(height: 70.0),
          Image.asset("assets/images/Frameimage3.png"),
          const SizedBox(height: 30.0),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Professional Walk",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Consectetur iusto, velit? Voluptates ex molestias excepturi, dolorum magni qui eius non, repellat id consequuntur, eos magnam sit fuga? Delectus error, beatae."),
          ),
        ],
      ),
    );
  }
}
