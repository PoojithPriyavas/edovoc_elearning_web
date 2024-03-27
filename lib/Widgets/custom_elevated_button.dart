import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
final String label;
final VoidCallback callbackAction;
  const CustomElevatedButton({
    required this.label,
    required this.callbackAction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      width: 350,
      child: ElevatedButton(
          style: const ButtonStyle(
            surfaceTintColor: MaterialStatePropertyAll(redColor ) ,
            overlayColor: MaterialStatePropertyAll(redLightColor  ), 
              backgroundColor:
                  MaterialStatePropertyAll(redColor)),
          onPressed: callbackAction,
          child: Text(
            label,
            style: t18RegularWhite,
          )), 
    );
  }
}