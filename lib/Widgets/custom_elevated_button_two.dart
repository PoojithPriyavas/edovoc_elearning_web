import 'package:edvoc_elearning/Core/style.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonTwo extends StatelessWidget {
  final VoidCallback callbackAction;
  final Color backgroundColor;
  final Color overColor;
  final Color tintColor;
  final String label;

  const CustomElevatedButtonTwo(
      {super.key,
      required this.callbackAction,
      required this.overColor,
      required this.tintColor,
      required this.backgroundColor,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      height: 23,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(backgroundColor),
              overlayColor:
                  // MaterialStatePropertyAll(blueColor.withOpacity(0.5)),
                  MaterialStatePropertyAll(overColor),
              surfaceTintColor: MaterialStatePropertyAll(tintColor),
              padding: const MaterialStatePropertyAll(EdgeInsets.zero),
              shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ))),
          onPressed: callbackAction,
          child: Text(
            label,
            style: t12MediumBlack,
          )),
    );
  }
}
