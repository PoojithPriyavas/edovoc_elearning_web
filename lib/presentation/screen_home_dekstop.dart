import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/presentation/courseDetail/screen_course_detail.dart';
import 'package:edvoc_elearning/presentation/homeScreen/Tabview/home.dart';
import 'package:edvoc_elearning/Widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ScreenHomeDesktop extends StatelessWidget {
  const ScreenHomeDesktop({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
    required TabController controller,
    required List<Text> tabViewChildren,
  })  : _controller = controller,
        _tabViewChildren = tabViewChildren;

  final double deviceHeight;
  final double deviceWidth;
  final TabController _controller;
  final List<Text> _tabViewChildren;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: const BoxDecoration(
          gradient: backgroundColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomAppBar(
                deviceWidth: deviceWidth,
                controller: _controller,
                tabViewChildren: _tabViewChildren),
            SizedBox(
              height: deviceHeight - 60,
              width: deviceWidth,
              child: Stack(
                children: [
                  TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _controller,
                    children: [
                      Home(
                          tabController: _controller, deviceWidth: deviceWidth),
                      ScreenCourseDetails(
                          averageRating: 213,
                          favouriteCount: 234,
                          studentCount: 234,
                          lastUpdated:
                              Timestamp(DateTime.april, DateTime.april),
                          courseName: "Spoken English Basics",
                          courseDescription:
                              "Learn Spoken English in its advanced way of learning with Graphical representaion. Learn Spoken English in its advanced way of learning with Graphical representaion. ",
                          coursePrice: 599,
                          courseType: "courseType",
                          date: "",
                          courseIndex: 0,
                          ratingAmount: 23),
                      Home(
                          tabController: _controller, deviceWidth: deviceWidth),
                      Home(
                          tabController: _controller, deviceWidth: deviceWidth),
                      // Home(
                      //     tabController: _controller, deviceWidth: deviceWidth),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
