import 'dart:ui';

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(255, 220, 223, 225),
              border: InputBorder.none,
              hintText: 'Enter a search term',
            ),
          ),
        ),
      ],
    );
  }
}
