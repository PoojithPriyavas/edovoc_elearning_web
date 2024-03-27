import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';

import 'package:edvoc_elearning/Ui/courseDetail/widgets/course_details_widget.dart';

import 'package:edvoc_elearning/model/question.dart';
import 'package:flutter/material.dart';

class ScreenCourseDetails extends StatelessWidget {
  final String courseName;
  final String courseDescription;
  final double coursePrice;
  final int ratingAmount;
  final String courseType;
  final String date;
  final int courseIndex;

  const ScreenCourseDetails(
      {super.key,
      required this.courseName,
      required this.courseDescription,
      required this.coursePrice,
      required this.courseType,
      required this.date,
      required this.courseIndex,
      required this.ratingAmount});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final Course course = coursesDummyList[courseIndex];

    return Scaffold(
      body: Container(
        height: deviceHeight - 60,
        width: deviceWidth,
        decoration: const BoxDecoration(
            // gradient: backgroundColor,
            color: blueColor),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              kHieght50,
              // SizedBox(
              //   width: deviceWidth - (deviceWidth * 0.3),
              //   child: const HtmlWidget(
              //     '''
              //           <div style="position:relative;padding-top:56.25%;">
              //             <iframe src="https://iframe.mediadelivery.net/embed/223805/4cef001b-0b94-4c36-839d-43ac5aba67bb?autoplay=false&loop=false&muted=false&preload=true&responsive=true" loading="lazy" style="border:0;position:absolute;top:0;height:100%;width:100%;" allow="accelerometer;gyroscope;autoplay;encrypted-media;picture-in-picture;" allowfullscreen="true"></iframe>
              //           </div>
              //           ''',
              //   ),
              // ),
              CourseDetailsWidget(
                  deviceWidth: deviceWidth,
                  courseName: courseName,
                  courseDescription: courseDescription,
                  course: course),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: deviceWidth - (deviceWidth * 0.3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: whiteColor),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    kHieght20,
                    Text("This Course Includes :"),
                    kHieght20,
                    Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      runAlignment: WrapAlignment.spaceBetween,
                      runSpacing: 30,
                      spacing: 80,
                      direction: Axis.horizontal,
                      children: [
                        CustomIconLabelWidget(
                            icon: Icons.play_arrow,
                            label: "60 total hours on-demand video"),
                        CustomIconLabelWidget(
                            icon: Icons.file_copy_sharp,
                            label: "support files"),
                        CustomIconLabelWidget(
                            icon: Icons.play_arrow,
                            label: "Full lifetime access"),
                        CustomIconLabelWidget(
                            icon: Icons.file_copy_sharp,
                            label: "Access on android mobiles"),
                        CustomIconLabelWidget(
                            icon: Icons.play_arrow,
                            label: "Certificate of Completion"),
                      ],
                    ),
                    kHieght50
                  ],
                ),
              ),
              kHieght30,
              Container(
                width: deviceWidth - (deviceWidth * 0.3),
                decoration: const BoxDecoration(
                  gradient: whiteToBlue,
                ),
                child: Column(
                  children: [
                    kHieght20,
                    Text("Course Content : "),
                    kHieght20,
                    Text("3 Sections | 30 hour length "),
                    kHieght20,
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

class CustomIconLabelWidget extends StatelessWidget {
  final String label;
  final IconData icon;
  const CustomIconLabelWidget(
      {super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 250,
      child: Row(
        children: [Icon(icon), Text(label)],
      ),
    );
  }
}
