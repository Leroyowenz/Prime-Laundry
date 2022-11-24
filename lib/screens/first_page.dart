import 'package:flutter/material.dart';

import '../utility/custom_widget.dart';

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
        title: textInfo("Settings", FontWeight.w500, Colors.black, 18),
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
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/settingsimage1.png"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Text("Uoc Nguyen"),
          textInfo("Uoc Nguyen", FontWeight.w500,
              const Color.fromRGBO(56, 16, 106, 20), 16),
          const SizedBox(
            height: 10,
          ),
          textInfo("Ha Noi, Viet Nam", FontWeight.w400,
              const Color.fromRGBO(130, 133, 138, 20), 12),

          const SizedBox(
            height: 15,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: textInfo(" Gold member", FontWeight.w400,
                    const Color.fromRGBO(130, 133, 138, 20), 13),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: textInfo(" 10 points", FontWeight.normal,
                    const Color.fromRGBO(130, 133, 138, 20), 13),
              ),
            ],
          ),

          const SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/Rectangle 41.png"),

          Container(
            color: Colors.grey,
            // decoration:,
            width: 200,
            height: 200,
            child: Column(
              children: [
                Row(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "label",
                        labelStyle: TextStyle(color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





              // Center(
              //   child: ClipRRect(
              //       borderRadius: BorderRadius.circular(40),
              //       child: Image.asset("assets/images/settingsimage1.png")),
              // ),
            
           