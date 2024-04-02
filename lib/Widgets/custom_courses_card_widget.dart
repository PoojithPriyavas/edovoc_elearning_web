import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/presentation/courseDetail/screen_course_detail.dart';
import 'package:edvoc_elearning/Widgets/custom_small_elevated_button.dart';
import 'package:flutter/material.dart';

class FeaturedCoursesCard extends StatefulWidget {
  final String courseName;
  final String courseDescription;
  final double coursePrice;
  final int ratingAmount;
  final String courseType;
  final String duration;
  final String courseLevel;
  final Timestamp courseLastUpdated;
  final double averageRating;
  final int studentCount;
  final int favouriteCount;
  final int courseId;
  const FeaturedCoursesCard(
      {super.key,
      required this.courseName,
      required this.courseDescription,
      required this.coursePrice,
      required this.courseType,
      required this.duration,
      required this.courseLevel,
      required this.ratingAmount,
      required this.averageRating,
      required this.studentCount,
      required this.favouriteCount,
      required this.courseId,
      required this.courseLastUpdated});

  @override
  State<FeaturedCoursesCard> createState() => _FeaturedCoursesCardState();
}

class _FeaturedCoursesCardState extends State<FeaturedCoursesCard> {
  bool isHover = false;
  Offset mousePos = const Offset(0, 0);

  @override
  void initState() {
    super.initState();
  }

  backImage() {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeOutCubic,
      top: isHover ? -10 + mousePos.dy : 0,
      left: isHover ? -5 + mousePos.dx : 0,
      height: isHover ? 160 : 125,
      child: Container(
        width: 240,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/card_image.png",
          ),
        )),
      ),
    );
  }

  gradient() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeOutCubic,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [
            Colors.black.withOpacity(isHover ? 0.2 : 0),
            Colors.transparent,
          ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ScreenCourseDetails(
                averageRating: widget.averageRating,
                favouriteCount: widget.favouriteCount,
                studentCount: widget.studentCount,
                lastUpdated: widget.courseLastUpdated,
                courseIndex: widget.courseId,
                courseName: widget.courseName,
                courseDescription: widget.courseDescription,
                coursePrice: widget.coursePrice,
                courseType: widget.courseType,
                date: widget.duration,
                ratingAmount: widget.ratingAmount),
          ));
        },
        child: MouseRegion(
          onEnter: (event) {
            setState(() {
              isHover = true;
            });
          },
          onHover: (e) {
            setState(() {
              mousePos += e.delta;
              mousePos *= 0.12;
            });
          },
          onExit: (event) {
            setState(() {
              isHover = false;
            });
          },
          child: Container(
            height: 265,
            width: 240,
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, isHover == true ? 2 : 0),
                    blurRadius: isHover == true ? 15 : 0,
                    spreadRadius: isHover == true ? 5 : 0,
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 125,
                    width: 230,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(
                      children: [backImage(), gradient()],
                    ),
                  ),
                  kHieght5,
                  Text(
                    // "Spoken English Basics",
                    widget.courseName,
                    style: t12SemiBoldDarkBlue,
                    maxLines: 2,
                  ),
                  kHieght10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.access_time,
                            color: Colors.black45,
                            size: 12,
                          ),
                          kWidth5,
                          Text(
                            // "3hr:45min",
                            "${widget.duration}hr:00min",
                            style: t8MediumGrey,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/star.png",
                            height: 12,
                          ),
                          Text(
                            "(${widget.ratingAmount})",
                            style: t8MediumYellow,
                          )
                        ],
                      )
                    ],
                  ),
                  kHieght10,
                  Text(widget.courseDescription,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: t8MediumBlackH2),
                  kHieght20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // "INR 899.00",
                            "INR ${widget.coursePrice.toStringAsFixed(2)}",
                            style: t10SemiBoldGrey,
                          ),
                          Text(
                            widget.courseLevel,
                            style: t7RegularDarkGrey,
                          )
                        ],
                      ),
                      CustomSmallElevatedButton(
                          label: "Learn More",
                          callbackAction: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ScreenCourseDetails(
                                  averageRating: widget.averageRating,
                                  favouriteCount: widget.favouriteCount,
                                  studentCount: widget.studentCount,
                                  lastUpdated: widget.courseLastUpdated,
                                  courseIndex: widget.courseId,
                                  courseName: widget.courseName,
                                  courseDescription: widget.courseDescription,
                                  coursePrice: widget.coursePrice,
                                  courseType: widget.courseType,
                                  date: widget.duration,
                                  ratingAmount: widget.ratingAmount),
                            ));
                          },
                          height: 20,
                          width: 70,
                          textStyle: t10MediumWhite),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
