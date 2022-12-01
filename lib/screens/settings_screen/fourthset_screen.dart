import 'package:flutter/material.dart';
import 'package:prime_laundry/utility/avatar_widget.dart';
import 'package:prime_laundry/utility/textfield_widget.dart';
import 'package:prime_laundry/utility/bottomsheet_widget.dart';
import '../../utility/text_widget.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const BottomSheetWidget(),
      appBar: AppBar(
        title: textInfo("Change Password", FontWeight.w500, Colors.black, 18,
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
        children: const [
          //  Code for Avatar widget
          SizedBox(
            height: 20,
          ),
          AvatarWidget(),
          SizedBox(
            height: 30,
          ),
          TextFieldWidget()
        ],
      ),
    );
  }
}
