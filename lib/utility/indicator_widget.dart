import 'package:flutter/material.dart';
import 'package:prime_laundry/utility/text_widget.dart';

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            textInfo(" Gold member", FontWeight.w400,
                const Color.fromRGBO(130, 133, 138, 20), 13, "Roboto-Regular"),
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
      ],
    );
  }
}
