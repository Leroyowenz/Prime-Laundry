import 'package:flutter/material.dart';
import '../utility/custom_widget.dart';
import '../utility/settingsbox_widget.dart';

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
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          const Center(
            // Code for Circle Avatar
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/settingsimage1.png"),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          // Text for circle avatar
          textInfo("Uoc Nguyen", FontWeight.w500,
              const Color.fromRGBO(56, 16, 106, 20), 16, "Roboto-Regular"),
          const SizedBox(
            height: 10,
          ),
          textInfo("Ha Noi, Viet Nam", FontWeight.w400,
              const Color.fromRGBO(130, 133, 138, 20), 12, "Roboto-Regular"),
          const SizedBox(
            height: 15,
          ),

          // Text for rectangle bar
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 2,
                ),
                child: Image.asset("assets/images/settingsimage2.png"),
              ),
              textInfo(
                  " Gold member",
                  FontWeight.w400,
                  const Color.fromRGBO(130, 133, 138, 20),
                  13,
                  "Roboto-Regular"),
              Padding(
                padding: const EdgeInsets.only(
                  left: 190,
                ),
                child: textInfo(
                    " 10 points",
                    FontWeight.normal,
                    const Color.fromRGBO(130, 133, 138, 20),
                    13,
                    "Roboto-Regular"),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          // Progress indicator bar
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              color: const Color.fromARGB(235, 222, 181, 183),
              width: 375,
              height: 5,
              child: Padding(
                padding: const EdgeInsets.only(right: 208.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: const LinearProgressIndicator(
                    value: 7,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          // Image.asset("assets/images/settingsimage3.png"),
          const SizedBox(
            height: 15,
          ),

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
    );
  }
}
