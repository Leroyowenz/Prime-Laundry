import 'package:flutter/material.dart';
import 'package:prime_laundry/utility/text_widget.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
