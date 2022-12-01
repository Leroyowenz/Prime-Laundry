import 'package:flutter/material.dart';
import 'package:prime_laundry/utility/avatar_widget.dart';
import '../../utility/indicator_widget.dart';
import '../../utility/text_widget.dart';
import '../../utility/settingsbox_widget.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: textInfo(
            "Settings", FontWeight.w500, Colors.black, 18, "Roboto-Regular"),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Code for Avatar widget
            const AvatarWidget(),
            const SizedBox(
              height: 10,
            ),

            // Code for Indicator Widget
            const IndicatorWidget(),

            //Widget for settings box
            const SettingsBox(),

            // Text for Others
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  textInfo(
                      "Others",
                      FontWeight.w500,
                      const Color.fromRGBO(56, 16, 106, 20),
                      16,
                      "Roboto-Regular"),
                ],
              ),
            ),

            // Second Rectangle bar
            const SettingsBox2(),

            // Logout Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textInfo(
                    "Logout",
                    FontWeight.w400,
                    const Color.fromRGBO(44, 44, 44, 20),
                    12,
                    "Roboto-Regular.ttf"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
