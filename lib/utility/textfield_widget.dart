import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // bottomCZc (1924:129)
          padding: const EdgeInsets.fromLTRB(19, 24, 19, 24),
          width: double.infinity,
          height: 148,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Color(0x33000000),
                offset: Offset(0, 0),
                blurRadius: 10,
              ),
            ],
          ),
          // Padding(
          //   padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       filled: true,
          //       fillColor: Color.fromARGB(255, 220, 223, 225),
          //       border: InputBorder.none,
          //       hintText: 'Old Password',
          //       labelText: 'Old Password',
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       filled: true,
          //       fillColor: Color.fromARGB(255, 220, 223, 225),
          //       border: InputBorder.none,
          //       hintText: 'New Password',
          //       labelText: 'New Password',
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20),
          //   child: TextField(
          //     decoration: InputDecoration(
          //       filled: true,
          //       fillColor: Color.fromARGB(255, 220, 223, 225),
          //       border: InputBorder.none,
          //       hintText: 'Confirm Password',
          //       labelText: 'Confirm Password',
          //     ),
          //   ),
          // ),
        )
      ],
    );
  }
}
