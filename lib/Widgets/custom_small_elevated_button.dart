import 'package:edvoc_elearning/Core/colors.dart';
import 'package:flutter/material.dart';

class CustomSmallElevatedButton extends StatelessWidget {
  final String label;
  final double height;
  final double width;
  final TextStyle textStyle;
  final VoidCallback callbackAction;
  const CustomSmallElevatedButton({
    required this.label,
    required this.callbackAction,
    required this.height,
    required this.width,
    required this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(

          style: const ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(0  )),
              shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
              surfaceTintColor: MaterialStatePropertyAll(redColor),
              overlayColor: MaterialStatePropertyAll(redLightColor),
              backgroundColor: MaterialStatePropertyAll(redColor)),
          onPressed: callbackAction,
          child: Text(
            label,
            style: textStyle,
            maxLines: 1,
          )),
    );
  }
}
