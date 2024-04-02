import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/presentation/screen_sign_in.dart';
import 'package:edvoc_elearning/Widgets/custom_elevated_button.dart';
import 'package:edvoc_elearning/Widgets/custom_text_filed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

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
                      "Stay tight.",
                      style: t26SemiBoldBlack,
                    ),
                    Row(
                      children: [
                        Text(
                          "You are at the ",
                          style: t26SemiBoldRed,
                        ),
                        Text(
                          "Right Place",
                          style: t30BoldRed,
                        ),
                      ],
                    ),
                    kHieght10,
                    Row(
                      children: [
                        Text(
                          "Already have an account? ",
                          style: t14MediumGrey,
                        ),
                        GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) => const ScreenSignIn(),
                          )),
                          child: Text(
                            "Sign in ",
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
              Row(
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
                        kHieght20,
                        const CustomTextField(hintText: "Name"),
                        kHieght20,
                        const CustomTextField(hintText: "Email"),
                        kHieght20,
                        const CustomTextField(hintText: "Password "),
                        kHieght20,
                        CustomElevatedButton(
                            label: "Sign Up",
                            callbackAction: () {
                             
                            }),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
