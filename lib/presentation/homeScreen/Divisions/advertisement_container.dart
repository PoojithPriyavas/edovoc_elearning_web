import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AdvertisementContainer extends StatelessWidget {
  const AdvertisementContainer({super.key});

  final url = "https://in.linkedin.com/in/poojith-priyavas-0b52b4215";

  // Future<void> _launchUrl() async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => MobileContainer(context),
      desktop: (p0) => DesktopContainer(context),
    );
  }

  Widget DesktopContainer(context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      color: blueColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                // _launchUrl();
              },
              child: RichText(
                text: const TextSpan(
                  text: '©Copyright 2024 Edvoc. Designed and Developed by',
                  style: TextStyle(color: Colors.black38, fontSize: 13),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Code Hatch',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Row(
              children: [
                Text("Privacy Policy",
                    style: TextStyle(color: Colors.white30, fontSize: 13)),
                Text("  |  ",
                    style: TextStyle(color: Colors.white30, fontSize: 13)),
                Text("Terms & Condition",
                    style: TextStyle(color: Colors.white30, fontSize: 13)),
                Text("  |  ",
                    style: TextStyle(color: Colors.white30, fontSize: 13)),
                Text("Contact Us",
                    style: TextStyle(color: Colors.white30, fontSize: 13))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildImage(String ImageUr, int index, String textinside) {
    return Container(
      width: 350,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.black,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image.asset(
              ImageUr,
              width: 350,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: 35,
                width: 350,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Colors.black45,
                ),
                child: Center(
                    child: Text(
                  textinside,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                )),
              ))
        ],
      ),
    );
  }

  Widget MobileContainer(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      color: blueColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                // _launchUrl();
              },
              child: RichText(
                textDirection: TextDirection.rtl,
                text: const TextSpan(
                  text:
                      '©Copyright 2024 DAS Auto Detailing. Designed and Developed by',
                  style: TextStyle(color: Colors.white30, fontSize: 10),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Code Hatch',
                      style: TextStyle(
                          color: redColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            kHieght10,
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Privacy Policy",
                        style: TextStyle(color: Colors.white30, fontSize: 10)),
                    Text("  |  ",
                        style: TextStyle(color: Colors.white30, fontSize: 10)),
                    Text("Terms & Condition",
                        style: TextStyle(color: Colors.white30, fontSize: 10)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
