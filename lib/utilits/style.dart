import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle headline(double w) {
  return GoogleFonts.concertOne(
      textStyle: TextStyle(
    fontSize: w * 0.05,
    fontWeight: FontWeight.w300,
    color: Color.fromARGB(255, 13, 13, 13),
  ));
}
