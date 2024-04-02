import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/Widgets/custom_courses_card_widget.dart';
import 'package:edvoc_elearning/Widgets/custom_elevated_button_two.dart';
import 'package:edvoc_elearning/service/course_service.dart';
import 'package:flutter/material.dart';

import '../../../model/ok/courses_model.dart';

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
    final CourseService courseService = CourseService();
    return Container(
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
            child: FutureBuilder(
                future: courseService.getDataFromFirestore(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    print("the error in code is ${snapshot.error}");
                    return Text('Error: ${snapshot.error}');
                  } else {
                    List<Course> courses = snapshot.data ?? [];
                    print("course is the $courses");
                    return Container(
                      height: 320,
                      width: widget.deviceWidth - 300,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          controller: _scrollController,
                          shrinkWrap: true,
                          itemCount: courses.length,
                          separatorBuilder: (context, index) => kWidth30,
                          itemBuilder: (context, index) => FeaturedCoursesCard(
                              courseId: courses[index].courseId,
                              averageRating: courses[index].averageRating,
                              favouriteCount: courses[index].favouriteCount,
                              studentCount: courses[index].studentCount,
                              courseLastUpdated: courses[index].lastUpdated,
                              courseName: courses[index].title,
                              courseDescription: courses[index].description,
                              coursePrice: courses[index].price.toDouble(),
                              courseType: courses[index].category,
                              duration: courses[index].duration,
                              courseLevel: courses[index].courseLevel,
                              ratingAmount: courses[index].favouriteCount)),
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
}
