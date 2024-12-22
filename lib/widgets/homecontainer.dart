import 'package:flutter/material.dart';
import 'package:praticetest/theme/Themedata/apptheme.dart';
import 'package:praticetest/theme/color.dart';

import 'package:praticetest/utilits/textdata.dart';

class HomeContainer extends StatelessWidget {
  final String healine;
  final String buttontitle;
  final void Function()? voidCallbackAction;
  const HomeContainer(
      {super.key,
      required this.healine,
      required this.voidCallbackAction,
      required this.buttontitle});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Card(
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: black,
          ),
          height: 200,
          margin: EdgeInsets.all(width * 0.01),
          padding: EdgeInsets.all(width * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: auto(healine, 35, Colors.white)),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green)),
                    onPressed: voidCallbackAction,
                    child: auto(buttontitle, 15, Colors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
