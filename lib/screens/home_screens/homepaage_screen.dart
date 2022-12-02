import 'package:flutter/material.dart';
import 'package:prime_laundry/screens/settings_screen/firstset_screen.dart';

import '../../utility/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Image.asset("assets/images/settingsimage1.png")
              // const CircleAvatar(
              //   radius: 40,
              //   backgroundImage: AssetImage("assets/images/settingsimage1.png"),
              // ),
              ),
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    textInfo(
                        "Hi, Uoc Nguyen",
                        FontWeight.w500,
                        const Color.fromRGBO(56, 16, 106, 20),
                        16,
                        "Roboto-Regular"),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    textInfo(
                        "Gold member",
                        FontWeight.w400,
                        const Color.fromRGBO(130, 133, 138, 20),
                        12,
                        "Roboto-Regular"),
                    textInfo(
                        " | Total:",
                        FontWeight.w400,
                        const Color.fromRGBO(130, 133, 138, 20),
                        12,
                        "Roboto-Regular"),
                    textInfo(
                        " 100",
                        FontWeight.w500,
                        const Color.fromARGB(235, 31, 34, 35),
                        12,
                        "Roboto-Regular"),
                    textInfo(
                        " points",
                        FontWeight.w400,
                        const Color.fromRGBO(130, 133, 138, 20),
                        12,
                        "Roboto-Regular"),
                  ],
                ),
              ],
            ),
          ),
          actions: const [Icon(Icons.notifications)],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 5, top: 5, bottom: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.search, color: Colors.grey),
                      Expanded(child: Text("Search services")),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: textInfo(
                      "Services",
                      FontWeight.w500,
                      const Color.fromRGBO(56, 16, 106, 20),
                      16,
                      "Roboto-Regular"),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const FirstPage())));
              },
              child: const Text(
                "settings page",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffe580ad),
                ),
              ),
            ),
          ],
        ));
  }
}
