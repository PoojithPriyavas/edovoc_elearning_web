import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/Widgets/custom_elevated_buy_now_button.dart';
import 'package:edvoc_elearning/model/question.dart';
import 'package:flutter/material.dart';

class CourseDetailsWidget extends StatelessWidget {
  const CourseDetailsWidget({
    super.key,
    required this.deviceWidth,
    required this.courseName,
    required this.courseDescription,
    required this.course,
  });

  final double deviceWidth;
  final String courseName;
  final String courseDescription;
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: deviceWidth - (deviceWidth * 0.3),
      decoration: const BoxDecoration(gradient: whiteToBlue),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  courseName,
                  style: t23SemiBoldshadeBlack,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.error_outline_outlined,
                            color: greyColor),
                        Text("Last Updated 01/2024",
                            style: t11MediumGreyColor),
                      ],
                    ),
                    kWidth10,
                    Row(
                      children: [
                        const Icon(Icons.language, color: greyColor),
                        Text("Malayalam", style: t11MediumGreyColor),
                      ],
                    ),
                    kWidth10,
                    Row(
                      children: [
                        const Icon(Icons.closed_caption_off,
                            color: greyColor),
                        Text("English", style: t11MediumGreyColor)
                      ],
                    ),
                  ],
                )
              ],
            ),
            kHieght20,
            SizedBox(
              width: (deviceWidth - (deviceWidth * 0.3)) * 0.6,
              child: Text(
                courseDescription,
                style: t15MediumBlack,
              ),
            ),
            kHieght20,
            Text(
              "INR ${course.coursePrice.toStringAsFixed(2)}",
              style: t15SemiBoldBlack,
            ),
            kHieght30,
            const CustomElevatedBuyNowButton()
          ],
        ),
      ),
    );
  }
}