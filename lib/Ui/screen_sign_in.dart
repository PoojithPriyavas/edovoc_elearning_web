import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/Ui/homeScreen/screen_home.dart';
import 'package:edvoc_elearning/Ui/screen_sign_up.dart';
import 'package:edvoc_elearning/Widgets/custom_elevated_button.dart';
import 'package:edvoc_elearning/Widgets/custom_text_filed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: const BoxDecoration(
          gradient: backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 420,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Text(
                      "Welcome back.",
                      style: t26SemiBoldBlack,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sign in ",
                          style: t30BoldRed,
                        ),
                        Text(
                          "to Continue",
                          style: t26SemiBoldBlack,
                        ),
                      ],
                    ),
                    kHieght10,
                    Row(
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: t14MediumGrey,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              CupertinoPageRoute(
                            builder: (context) => const ScreenSignUp(),
                          )
                              // MaterialPageRoute(
                              //   builder: (context) => const ScreenSignUp(),
                              // ),
                              ),
                          child: Text(
                            "Register Now",
                            style: t14MediumRed,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/logo_main.png",
                      height: 70,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 420,
                      width: 500,
                      decoration: const BoxDecoration(
                          gradient: backgroundColor,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(4, 4),
                                spreadRadius: 0,
                                blurRadius: 20)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomTextField(hintText: "Email"),
                          kHieght30,
                          const CustomTextField(hintText: "Password "),
                          kHieght10,
                          SizedBox(
                            width: 350,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Forget Password?",
                                  style: t12SemiBoldred,
                                )
                              ],
                            ),
                          ),
                          kHieght20,
                          CustomElevatedButton(
                            label: "Sign In",
                            callbackAction: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ScreenHome(),
                              ));
                            },
                          ),
                          kHieght30,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                                width: 80,
                                child: Divider(
                                  thickness: 1,
                                  color: redLightColor,
                                  endIndent: 5,
                                  indent: 5,
                                ),
                              ),
                              Text(
                                "or continue with",
                                style: t12MediumGrey,
                              ),
                              const SizedBox(
                                height: 20,
                                width: 80,
                                child: Divider(
                                  thickness: 1,
                                  color: redLightColor,
                                  endIndent: 5,
                                  indent: 5,
                                ),
                              ),
                            ],
                          ),
                          kHieght10,
                          Image.asset("assets/google_logo.png", height: 49)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
