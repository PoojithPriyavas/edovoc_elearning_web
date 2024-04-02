import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:flutter/material.dart';

class CustomElevatedBuyNowButton extends StatelessWidget {
  const CustomElevatedBuyNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 340,
      child: ElevatedButton(
          style: const ButtonStyle(
            surfaceTintColor: MaterialStatePropertyAll(whiteColor),
            backgroundColor: MaterialStatePropertyAll(whiteColor),
            overlayColor: MaterialStatePropertyAll(whiteColor),
            shape: MaterialStatePropertyAll(
              ContinuousRectangleBorder(
                side: BorderSide(color: redColor),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Buy Now",
            style: t18SemiBoldOrange,
          )),
    );
  }
}
