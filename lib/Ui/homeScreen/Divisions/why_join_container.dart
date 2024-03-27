import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/Ui/homeScreen/Tabview/home.dart';
import 'package:flutter/material.dart';

class WhyJoinContainer extends StatelessWidget {
  const WhyJoinContainer({
    super.key,
    required this.widget,
  });

  final Home widget;

  @override
  Widget build(BuildContext context) {
    const smallScreenWidth = 1260;
    print("screen width =${widget.deviceWidth}");
    if (widget.deviceWidth <= smallScreenWidth) {
      return Container(
        width: widget.deviceWidth,
        color: blueColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
          child: Column(
            children: [
              Text(
                "Why Join Edvoc? ",
                style: t15SemiBoldDarkBlue,
              ),
              kHieght20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 350,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 120,
                          color: Colors.transparent,
                          child: Image.asset("assets/time.png"),
                        ),
                        kWidth10,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "On Demand",
                                style: t15SemiBoldDarkBlue,
                              ),
                              kHieght5,
                              Text(
                                "Watch bite-sized classes on your own shedule, anytime, anywhere on desktop or mobile app.",
                                style: t12MediumBlack,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 120,
                          color: Colors.transparent,
                          child: Image.asset("assets/bot.png"),
                        ),
                        kWidth10,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Edvoc AI Assist",
                                style: t15SemiBoldDarkBlue,
                              ),
                              kHieght5,
                              Text(
                                "Watch bite-sized classes on your own shedule, anytime, anywhere on desktop or mobile app.",
                                style: t12MediumBlack,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                children: [
                  Container(
                    width: 350,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 120,
                          color: Colors.transparent,
                          child: Image.asset("assets/community.png"),
                        ),
                        kWidth10,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Online Community",
                                style: t15SemiBoldDarkBlue,
                              ),
                              kHieght5,
                              Text(
                                "Create group voice call, one to one voice call. Ask questions, and learn alognside with other students.",
                                style: t12MediumBlack,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 120,
                          color: Colors.transparent,
                          child: Image.asset("assets/website.png"),
                        ),
                        kWidth10,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Web App",
                                style: t15SemiBoldDarkBlue,
                              ),
                              kHieght5,
                              Text(
                                "Watch bite-sized classes on your own shedule, anytime, anywhere on desktop or mobile app.",
                                style: t12MediumBlack,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 350,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 120,
                          color: Colors.transparent,
                          child: Image.asset("assets/android.png"),
                        ),
                        kWidth10,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Android App",
                                style: t15SemiBoldDarkBlue,
                              ),
                              kHieght5,
                              Text(
                                "Watch bite-sized classes on your own shedule, anytime, anywhere on desktop or mobile app.",
                                style: t12MediumBlack,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 350,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 120,
                          color: Colors.transparent,
                          child: Image.asset("assets/iphone.png"),
                        ),
                        kWidth10,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "IOS App",
                                style: t15SemiBoldDarkBlue,
                              ),
                              kHieght5,
                              Text(
                                "We are extening our service to IOS sers also. App is under work. stay tuned for future updates.",
                                style: t12MediumBlack,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }
    return Container(
      // height: 330,
      width: widget.deviceWidth,
      color: blueColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
        child: Column(
          children: [
            Text(
              "Why Join Edvoc? ",
              style: t15SemiBoldDarkBlue,
            ),
            kHieght20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 350,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.transparent,
                        child: Image.asset("assets/time.png"),
                      ),
                      kWidth10,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "On Demand",
                              style: t15SemiBoldDarkBlue,
                            ),
                            kHieght5,
                            Text(
                              "Watch bite-sized classes on your own shedule, anytime, anywhere on desktop or mobile app.",
                              style: t12MediumBlack,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.transparent,
                        child: Image.asset("assets/bot.png"),
                      ),
                      kWidth10,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Edvoc AI Assist",
                              style: t15SemiBoldDarkBlue,
                            ),
                            kHieght5,
                            Text(
                              "Watch bite-sized classes on your own shedule, anytime, anywhere on desktop or mobile app.",
                              style: t12MediumBlack,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.transparent,
                        child: Image.asset("assets/community.png"),
                      ),
                      kWidth10,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Online Community",
                              style: t15SemiBoldDarkBlue,
                            ),
                            kHieght5,
                            Text(
                              "Create group voice call, one to one voice call. Ask questions, and learn alognside with other students.",
                              style: t12MediumBlack,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 350,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.transparent,
                        child: Image.asset("assets/android.png"),
                      ),
                      kWidth10,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Android App",
                              style: t15SemiBoldDarkBlue,
                            ),
                            kHieght5,
                            Text(
                              "Watch bite-sized classes on your own shedule, anytime, anywhere on desktop or mobile app.",
                              style: t12MediumBlack,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.transparent,
                        child: Image.asset("assets/iphone.png"),
                      ),
                      kWidth10,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "IOS App",
                              style: t15SemiBoldDarkBlue,
                            ),
                            kHieght5,
                            Text(
                              "We are extening our service to IOS sers also. App is under work. stay tuned for future updates.",
                              style: t12MediumBlack,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.transparent,
                        child: Image.asset("assets/website.png"),
                      ),
                      kWidth10,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Web App",
                              style: t15SemiBoldDarkBlue,
                            ),
                            kHieght5,
                            Text(
                              "Watch bite-sized classes on your own shedule, anytime, anywhere on desktop or mobile app.",
                              style: t12MediumBlack,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
