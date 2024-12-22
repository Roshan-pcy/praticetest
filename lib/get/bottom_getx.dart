import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Getxbottom extends GetxController {
  Rx<FocusNode> focusNode = FocusNode().obs;
  RxBool hhasfocus = false.obs;
  var currentIndex = 0.obs;
  void focus() {
    focusNode.value.unfocus();
  }

  void unfocus() {
    if (!focusNode.value.hasFocus) {
      focusNode.value.requestFocus();
      hhasfocus.value = true;
    }
  }
}
