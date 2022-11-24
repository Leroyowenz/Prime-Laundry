import 'package:flutter/material.dart';

Text textInfo(
    String text, FontWeight fontWeight, Color? color, double fontsize) {
  return Text(
    text,
    style: TextStyle(
        fontFamily: "Poppins",
        fontWeight: fontWeight,
        color: color,
        fontSize: fontsize),
  );
}
