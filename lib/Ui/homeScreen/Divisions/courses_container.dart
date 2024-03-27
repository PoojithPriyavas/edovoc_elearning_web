import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/Widgets/custom_courses_card_widget.dart';
import 'package:edvoc_elearning/Widgets/custom_elevated_button_two.dart';
import 'package:edvoc_elearning/model/course_model.dart';
import 'package:flutter/material.dart';

class CoursesContainer extends StatefulWidget {
  const CoursesContainer({
    super.key,
    required this.deviceWidth,
    required this.tabController,
  });

  final double deviceWidth;
  final TabController tabController;

  @override
  State<CoursesContainer> createState() => _CoursesContainerState();
}

class _CoursesContainerState extends State<CoursesContainer> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 410,
      height: 500,
      width: widget.deviceWidth,
      color: blueColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 150, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore Featured Courses",
                  style: t20SemiBoldDarkGrey,
                ),
                CustomElevatedButtonTwo(
                    backgroundColor: whiteColor,
                    overColor: blueColor,
                    tintColor: whiteColor,
                    label: "View All ",
                    callbackAction: () {
                      widget.tabController.animateTo(1);
                    })
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Container(
              height: 320,
              width: widget.deviceWidth - 300,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  shrinkWrap: true,
                  itemCount: courseList.length,
                  separatorBuilder: (context, index) => kWidth30,
                  itemBuilder: (context, index) => FeaturedCoursesCard(
                      courseName: courseList[index].courseName,
                      courseDescription: courseList[index].courseDescription,
                      coursePrice: courseList[index].coursePrice,
                      courseType: courseList[index].courseType,
                      date: courseList[index].duration,
                      ratingAmount: courseList[index].ratingAmount)),
            ),
          )
        ],
      ),
    );
  }
}
