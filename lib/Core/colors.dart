import 'package:flutter/material.dart';

const blueColor = Color(0xFFE2F0F4);
const shadeColor = Color.fromARGB(255, 218, 238, 243);

const whiteColor = Colors.white;
const blackColor = Colors.black;

const darkBlue = Color(0xFF253C5D);

const redColor = Color(0xFFDD524A);
const redLightColor = Color(0xFFDD524A);

const darkGreyColor = Color(0xFF343434);

const greyColor = Color(0xFF6F6F6F);
const lightGreyColor = Color(0xFFD4D4D4);
const goldColor = Color(0xFFFEF6CC);

const yellowColor = Color(0xFFFFC100);
const lightGreenColor = Color(0xFF3EA65B);

// linear COlor

const backgroundColor = LinearGradient(
    colors: [blueColor, whiteColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);

const whiteToBlue = LinearGradient(
    colors: [whiteColor, blueColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);

const whiteToLightBlueGradient = LinearGradient(colors: [
  whiteColor,
  whiteColor,
  whiteColor,
  blueColor,
], begin: Alignment.centerLeft, end: Alignment.centerRight);

const whiteTotransparentGradient = LinearGradient(colors: [
  whiteColor,
  whiteColor,
  whiteColor,
  Color.fromARGB(0, 255, 255, 255)
], begin: Alignment.centerLeft, end: Alignment.centerRight);

const shadeToDarkColor = LinearGradient(
    colors: [whiteColor, blueColor, blueColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);
