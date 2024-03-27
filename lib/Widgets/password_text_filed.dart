import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final String hintText;
  const PasswordTextField({
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 50,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 0),
              blurRadius: 10,
              spreadRadius: 0)
        ], color: whiteColor, borderRadius: BorderRadius.circular(50)),
        child: TextField(
          cursorColor: greyColor,
          decoration: InputDecoration(
              hintStyle: t14RegularLightGrey,
              hintText: hintText,
              fillColor: Colors.white,
              focusColor: whiteColor,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: redColor.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(50)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(50)),
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(50))),
        ));
  }
}
