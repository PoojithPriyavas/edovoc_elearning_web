import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/Widgets/custom_courses_card_widget.dart';
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  String courseName;
  String courseDescription;
  double coursePrice;
  int ratingAmount;
  String courseType;
  String date;
  Courses(
      {super.key,
      required this.courseName,
      required this.courseDescription,
      required this.coursePrice,
      required this.courseType,
      required this.date,
      required this.ratingAmount});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      color: blueColor,
      height: deviceHeight,
      width: deviceWidth,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: Text(
              "Explore Featured Courses",
              style: t20SemiBoldDarkGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5)),
              child: Wrap(
                runSpacing: 30,
                spacing: 30,
                children: [
                  FeaturedCoursesCard(
                      courseId: 1,
                      averageRating: 322,
                      favouriteCount: 23,
                      studentCount: 23,
                      courseLastUpdated:
                          Timestamp(DateTime.april, DateTime.daysPerWeek),
                      courseName: courseName,
                      courseDescription: courseDescription,
                      coursePrice: coursePrice,
                      courseType: courseType,
                      duration: date,
                      courseLevel: "",
                      ratingAmount: ratingAmount),
                  FeaturedCoursesCard(
                      courseId: 1,
                      averageRating: 322,
                      favouriteCount: 23,
                      studentCount: 23,
                      courseLastUpdated:
                          Timestamp(DateTime.april, DateTime.daysPerWeek),
                      courseName: courseName,
                      courseDescription: courseDescription,
                      coursePrice: coursePrice,
                      courseType: courseType,
                      duration: date,
                      courseLevel: "",
                      ratingAmount: ratingAmount),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
