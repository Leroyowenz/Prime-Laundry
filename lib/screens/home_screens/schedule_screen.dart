import 'package:flutter/material.dart';

import '../../utility/text_widget.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
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
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Container(
      //         margin: const EdgeInsets.fromLTRB(50, 10, 10, 14),
      //         width: double.infinity,
      //         child: Row(
      //             crossAxisAlignment: CrossAxisAlignment.start, children: [

      //             ]))
      //   ],
      // ),
    );
  }
}
