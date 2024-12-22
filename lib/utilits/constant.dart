import 'dart:ui';

import 'package:fluttertoast/fluttertoast.dart';

myToast({required String msg, required Color color, required Color textColor}) {
  return Fluttertoast.showToast(
      msg: msg, textColor: textColor, backgroundColor: color);
}
