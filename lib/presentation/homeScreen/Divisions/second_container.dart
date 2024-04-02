import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/Widgets/custom_small_elevated_button.dart';
import 'package:flutter/material.dart';

class SecondContainer extends StatefulWidget {
  const SecondContainer({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  State<SecondContainer> createState() => _SecondContainerState();
}

class _SecondContainerState extends State<SecondContainer> {
  bool ishovered1 = false;
  bool ishovered2 = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.deviceWidth,
      color: whiteColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  ishovered1 = true;
                });
              },
              onExit: (event) {
                setState(() {
                  ishovered1 = false;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeOutCubic,
                height: 165,
                width: 450,
                decoration: BoxDecoration(
                    gradient: backgroundColor,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: ishovered1
                            ? Colors.black45
                            : Colors.black.withOpacity(0),
                        offset: const Offset(0, 0),
                        blurRadius: ishovered1 == true ? 5 : 0,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect Edvoc Students",
                          style: t12MediumBlack,
                        ),
                        kHieght5,
                        Text(
                          "Connect Students across",
                          style: t15SemiBoldDarkBlue,
                        ),
                        Text("Edvoc ELearning app.",
                            style: t15SemiBoldDarkBlue),
                        kHieght10,
                        CustomSmallElevatedButton(
                          label: "Know more",
                          callbackAction: () {},
                          height: 25,
                          width: 110,
                          textStyle: t12MediumWhite,
                        ),
                      ],
                    ),
                    SizedBox(
                      // height: 165,
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/dummy_image_one.png",
                            width: 160,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            MouseRegion(
              onEnter: (event) {
                setState(() {
                  ishovered2 = true;
                });
              },
              onExit: (event) {
                setState(() {
                  ishovered2 = false;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeOutCubic,
                height: 165,
                width: 450,
                decoration: BoxDecoration(
                  // color: blueColor,
                  boxShadow: [
                    BoxShadow(
                      color: ishovered2
                          ? Colors.black45
                          : Colors.black.withOpacity(0),
                      offset: const Offset(0, 0),
                      blurRadius: ishovered2 == true ? 5 : 0,
                    )
                  ],
                  gradient: backgroundColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Personalised Edvoc AI",
                          style: t12MediumBlack,
                        ),
                        kHieght5,
                        Text(
                          "Personalised AI Chat bot fo",
                          style: t15SemiBoldDarkBlue,
                        ),
                        Text("premium students.", style: t15SemiBoldDarkBlue),
                        kHieght10,
                        CustomSmallElevatedButton(
                          label: "Know more",
                          callbackAction: () {},
                          height: 25,
                          width: 110,
                          textStyle: t12MediumWhite,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            "assets/dummy_image_two.png",
                            width: 160,
                            fit: BoxFit.fitHeight,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
