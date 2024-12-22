import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

AutoSizeText auto(String title, double size, Color color) {
  return AutoSizeText(
    title,
    minFontSize: 5,
    maxFontSize: 15,
    overflow: TextOverflow.ellipsis,
    maxLines: 10,
    style: TextStyle(
        fontSize: size, color: Colors.white, fontWeight: FontWeight.w500),
  );
}
