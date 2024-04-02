import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BannerContainer extends StatelessWidget {
  const BannerContainer({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      width: deviceWidth,
      decoration: const BoxDecoration(gradient: shadeToDarkColor),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 100,
            child: SizedBox(
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Lottie.asset("assets/lottie.json"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              children: [
                Image.asset("assets/edvocBanner.png"),
                const SizedBox(
                  width: 80,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "KEEP LEARNING",
                        style: t12RegularRed,
                      ),
                      kHieght10,
                      Text(
                        "Connect With our Experts",
                        style: t20MediumRed,
                      ),
                      kHieght10,
                      Text(
                        "Acquire global knowledge and build your\nproffesional skils.",
                        style: t15RegularGrey,
                      ),
                      kHieght50,
                      ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(redColor),
                            shape: MaterialStatePropertyAll(
                                ContinuousRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))))),
                        onPressed: () {},
                        child: Text(
                          "Get Started",
                          style: t14RegularLightWhite,
                        ),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
