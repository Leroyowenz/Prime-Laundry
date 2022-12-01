import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../utility/text_widget.dart';
// import '../utility/settingsbox_widget.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: textInfo("Refer & Earn", FontWeight.w500, Colors.black, 18,
            "Roboto-Regular"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 55,
          ),
          Center(
            child: Image.asset(
              "assets/images/referimage1.png",
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          textInfo("Refer & Earn a Free Wash", FontWeight.w500,
              const Color.fromRGBO(56, 16, 106, 20), 16, "Roboto-Regular"),
          const SizedBox(
            height: 10,
          ),
          textInfo('''
Lorem ipsum dolor sit amet, consectetur adipisicing 
  elit, sed do eiusmod tempor incididunt ut labore et 
                             dolore magna aliqua.''', FontWeight.w400,
              const Color.fromRGBO(44, 44, 44, 20), 13, "Roboto-Regular"),
          const SizedBox(
            height: 40,
          ),
          DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(8),
            color: const Color.fromRGBO(56, 16, 106, 20),
            dashPattern: const [5, 2],
            child: SizedBox(
              height: 54,
              width: 221,
              child: Center(
                child: textInfo(
                    "A B C 1 2 3 4 5 6",
                    FontWeight.w500,
                    const Color.fromRGBO(56, 16, 106, 20),
                    18,
                    "Roboto-Regular"),
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Center(
            child: Image.asset(
              "assets/images/referimage2.png",
            ),
          ),
        ],
      ),
    );
  }
}
