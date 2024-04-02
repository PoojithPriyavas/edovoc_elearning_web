import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterContainer extends StatelessWidget {
  const FooterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (p0) => DesktopContainer(context),
      mobile: (p0) => DesktopContainer(context),
    );
  }

  Widget DesktopContainer(context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      color: whiteColor,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 100, right: 100, bottom: 50, top: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: deviceWidth * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/logo_main.png", height: 50),
                  Text(
                    '''Welcome to Edvoc Academy, where education meets innovation! At Edvoc, we are committed to transforming learning experiences through cutting-edge online courses. Our platform is designed to empower learners of all backgrounds with accessible and high-quality education.''',
                    style: t12MediumBlack,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: deviceWidth * 0.35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("USEFULL LINKS", style: t12SemiBoldDarkBlue),
                      const SizedBox(
                        width: 25,
                        child: Divider(
                          height: 10,
                          color: darkBlue,
                          thickness: 1.5,
                        ),
                      ),
                      kHieght5,
                      Text("Home", style: t12MediumBlack),
                      kHieght5,
                      Text("About Us", style: t12MediumBlack),
                      kHieght5,
                      Text("Courses", style: t12MediumBlack),
                    ],
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("CONTACT US", style: t12SemiBoldDarkBlue),
                      const SizedBox(
                        width: 25,
                        child: Divider(
                          height: 10,
                          color: darkBlue,
                          thickness: 1.5,
                        ),
                      ),
                      // kHeight7,
                      kHieght5,
                      // kHeight5,
                      Text(
                          "No.60/49, Third Floor,\nJc Chambers, Panampilly Nagar,\nErnakulam, Kerala, India\n\n+91 79949 46547\ninfo@edvocacademy.com",
                          style: t12MediumBlack)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
