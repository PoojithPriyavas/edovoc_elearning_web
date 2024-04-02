import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/Widgets/custom_elevated_buy_now_button.dart';
import 'package:edvoc_elearning/model/question.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CourseDetailsWidget extends StatelessWidget {
  const CourseDetailsWidget({
    super.key,
    required this.deviceWidth,
    required this.courseName,
    required this.courseDescription,
    required this.course,
    required this.lastUpdated,
  });

  final double deviceWidth;
  final String courseName;
  final String courseDescription;
  final Course course;
  final Timestamp lastUpdated;

  @override
  Widget build(BuildContext context) {
    // Convert Timestamp to DateTime
    DateTime dateTime = lastUpdated.toDate();

// Format DateTime into "DD/MM/YYYY" format
    String formattedDate = DateFormat('dd/MM/yyyy').format(dateTime);

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
              height: 50,
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
                        Text("Last Updated ${formattedDate}",
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
                        const Icon(Icons.closed_caption_off, color: greyColor),
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
