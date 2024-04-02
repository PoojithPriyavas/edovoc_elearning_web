import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/model/ok/assignment_model.dart';
import 'package:edvoc_elearning/model/ok/quiz/quiz_model.dart';
import 'package:edvoc_elearning/model/ok/topics_model.dart';
import 'package:edvoc_elearning/model/ok/video_model.dart';
import 'package:edvoc_elearning/presentation/courseDetail/widgets/course_details_widget.dart';
import 'package:edvoc_elearning/model/question.dart';
import 'package:edvoc_elearning/service/assignment_service.dart';
import 'package:edvoc_elearning/service/quiz_service.dart';
import 'package:edvoc_elearning/service/topic_service.dart';
import 'package:edvoc_elearning/service/video_service.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class ScreenCourseDetails extends StatelessWidget {
  final String courseName;
  final String courseDescription;
  final double coursePrice;
  final int ratingAmount;
  final String courseType;
  final String date;
  final int courseIndex;
  final Timestamp lastUpdated;
  final int studentCount;
  final double averageRating;
  final int favouriteCount;

  const ScreenCourseDetails(
      {super.key,
      required this.courseName,
      required this.courseDescription,
      required this.coursePrice,
      required this.courseType,
      required this.date,
      required this.courseIndex,
      required this.ratingAmount,
      required this.averageRating,
      required this.favouriteCount,
      required this.studentCount,
      required this.lastUpdated});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final Course course = coursesDummyList[courseIndex];
    final VideoService videoService = VideoService();

    final AssignmentService assignmentService = AssignmentService();

    final QuizService quizService = QuizService();
    final TopicService topicService = TopicService();

    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: const BoxDecoration(color: blueColor),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              kHieght50,
              SizedBox(
                width: deviceWidth - (deviceWidth * 0.3),
                // child: const HtmlWidget(
                //   '''

                //           <iframe src="https://iframe.mediadelivery.net/embed/223805/4cef001b-0b94-4c36-839d-43ac5aba67bb?autoplay=false&loop=false&muted=false&preload=true&responsive=true" loading="lazy" style="border:0;position:absolute;top:0;height:100%;width:100%;" allow="accelerometer;gyroscope;autoplay;encrypted-media;picture-in-picture;" allowfullscreen="true"></iframe>

                //         ''',
                // ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 110,
                              ),
                              CourseDetailsWidget(
                                  lastUpdated: lastUpdated,
                                  deviceWidth: deviceWidth,
                                  courseName: courseName,
                                  courseDescription: courseDescription,
                                  course: course),
                            ],
                          ),
                          Container(
                            height: 120,
                            width: deviceWidth - (deviceWidth * 0.3),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(0, 10),
                                      blurRadius: 3,
                                      spreadRadius: -5)
                                ]),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CustomIconTextNewWidget(
                                          icon: const Icon(
                                            Icons.people_outline,
                                            color: Colors.lightGreen,
                                          ),
                                          label: "$studentCount K "),
                                      kWidth20,
                                      CustomIconTextNewWidget(
                                          icon: const Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          label: averageRating.toString()),
                                      kWidth20,
                                      CustomIconTextNewWidget(
                                          icon: const Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                          label: "$favouriteCount K "),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            padding:
                                                const MaterialStatePropertyAll(
                                                    EdgeInsets.symmetric(
                                                        horizontal: 70)),
                                            shape: MaterialStatePropertyAll(
                                                ContinuousRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            backgroundColor:
                                                const MaterialStatePropertyAll(
                                                    redColor)),
                                        onPressed: () async {},
                                        child: Text(
                                          "Add to Favourates",
                                          style: t14RegularLightWhite,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: deviceWidth - (deviceWidth * 0.3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: whiteColor),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kHieght20,
                      Text(
                        "This Course Includes :",
                        style: t22SemiBoldBlack,
                      ),
                      kHieght20,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconLabelWidget(
                              icon: Icons.play_arrow,
                              label: "60 total hours on-demand video"),
                          CustomIconLabelWidget(
                              icon: Icons.file_copy_sharp,
                              label: "support files"),
                        ],
                      ),
                      kHieght20,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconLabelWidget(
                              icon: Icons.play_arrow,
                              label: "Full lifetime access"),
                          CustomIconLabelWidget(
                              icon: Icons.file_copy_sharp,
                              label: "Access on android mobiles"),
                        ],
                      ),
                      kHieght20,
                      const CustomIconLabelWidget(
                          icon: Icons.play_arrow,
                          label: "Certificate of Completion"),
                      kHieght50
                    ],
                  ),
                ),
              ),
              kHieght30,
              Container(
                width: deviceWidth - (deviceWidth * 0.3),
                decoration: BoxDecoration(
                  gradient: whiteToBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: FutureBuilder(
                    future: Future.wait([
                      videoService.getVideoWithCourse(courseIndex),
                      assignmentService.getAssignmentWithCourse(courseIndex),
                      quizService.getAssignmentWithCourse(courseIndex),
                      topicService.getAssignmentWithCourse(courseIndex)
                    ]),
                    builder:
                        (context, AsyncSnapshot<List<List<dynamic>>> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        print("the error in code is ${snapshot.error}");
                        return Text('Error: ${snapshot.error}');
                      } else {
                        List<List<dynamic>>? data = snapshot.data;

                        if (data != null) {
                          List<dynamic> combinedData = [];
                          combinedData.addAll(data[0]);
                          combinedData.addAll(data[1]);
                          combinedData.addAll(data[2]);
                          combinedData.addAll(data[3]);

                          List<TopicsModel> topics =
                              data[3].cast<TopicsModel>();

                          topics.sort(
                              (a, b) => a.topicOrder.compareTo(b.topicOrder));

                          print("topics are $topics");

                          combinedData.sort((a, b) {
                            int orderA = (a is VideoModel)
                                ? a.lessonOrder
                                : ((a is AssignmentModel)
                                    ? a.lessonOrder
                                    : ((a is QuizModel) ? a.lessonOrder : 0));
                            int orderB = (b is VideoModel)
                                ? b.lessonOrder
                                : ((b is AssignmentModel)
                                    ? b.lessonOrder
                                    : ((b is QuizModel) ? b.lessonOrder : 0));

                            return orderA.compareTo(orderB);
                          });

                          print("combined data in the list is $combinedData");

                          if (combinedData.isNotEmpty) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                kHieght20,
                                Text(
                                  "Course Content : ",
                                  style: t22SemiBoldBlack,
                                ),
                                kHieght20,
                                Text(
                                    "${topics.length} Sections | 30 hour length ",
                                    style: t18MediumBlack),
                                kHieght20,
                                SizedBox(
                                  height: 400,
                                  child: ListView.builder(
                                      itemCount: topics.length,
                                      itemBuilder: (context, index) {
                                        final dummyTopicId =
                                            topics[index].topicId;

                                        List<dynamic> filteredData =
                                            combinedData.where((item) {
                                          if (item is VideoModel &&
                                              item.topicId == dummyTopicId) {
                                            return true;
                                          } else if (item is AssignmentModel &&
                                              item.topicId == dummyTopicId) {
                                            return true;
                                          } else if (item is QuizModel &&
                                              item.topicId == dummyTopicId) {
                                            return true;
                                          }
                                          return false;
                                        }).toList();

                                        return ExpansionTile(
                                          title: Text(topics[index].title,
                                              style: t15SemiBoldBlack),
                                          leading: Text(
                                            '${index + 1}. ',
                                            style: t15SemiBoldBlack,
                                          ),
                                          initiallyExpanded: true,
                                          shape:
                                              const ContinuousRectangleBorder(
                                                  side: BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                          children: [
                                            SizedBox(
                                              height: 130,
                                              child: ListView.builder(
                                                itemCount: filteredData.length,
                                                itemBuilder:
                                                    (context, newIndex) {
                                                  dynamic item =
                                                      filteredData[newIndex];
                                                  if (item is VideoModel) {
                                                    return CustomCourseLessonWidget(
                                                        icon: Icons
                                                            .video_collection_outlined,
                                                        item: item);
                                                  } else if (item
                                                      is AssignmentModel) {
                                                    return CustomCourseLessonWidget(
                                                        icon: Icons.assignment,
                                                        item: item);
                                                  } else if (item
                                                      is QuizModel) {
                                                    return CustomCourseLessonWidget(
                                                        icon: Icons.quiz,
                                                        item: item);
                                                  } else {
                                                    return const SizedBox();
                                                  }
                                                },
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                ),
                              ],
                            );
                          } else {
                            return const Text("No data available");
                          }
                        } else {
                          return const Text("No data available");
                        }
                      }
                    },
                  ),
                ),
              ),
              Container(
                width: deviceWidth - (deviceWidth * 0.3),
                decoration: BoxDecoration(
                  gradient: whiteToBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: FutureBuilder(
                      future: Future.wait([
                        videoService.getVideoWithCourse(courseIndex),
                        assignmentService.getAssignmentWithCourse(courseIndex),
                        quizService.getAssignmentWithCourse(courseIndex),
                      ]),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          print("the error in code is ${snapshot.error}");
                          return Text('Error: ${snapshot.error}');
                        } else {
                          List<List<dynamic>>? data = snapshot.data;

                          List<dynamic> combinedData = [];
                          combinedData.addAll(data![0]);
                          combinedData.addAll(data[1]);
                          combinedData.addAll(data[2]);

                          combinedData.sort((a, b) {
                            int orderA = (a is VideoModel)
                                ? a.lessonOrder
                                : ((a is AssignmentModel)
                                    ? a.lessonOrder
                                    : ((a is QuizModel) ? a.lessonOrder : 0));
                            int orderB = (b is VideoModel)
                                ? b.lessonOrder
                                : ((b is AssignmentModel)
                                    ? b.lessonOrder
                                    : ((b is QuizModel) ? b.lessonOrder : 0));
                            // Compare lesson_order
                            return orderA.compareTo(orderB);
                          });

                          print("combinedData id $combinedData");

                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              kHieght20,
                              Text(
                                "Course Content : ",
                                style: t22SemiBoldBlack,
                              ),
                              kHieght20,
                              Text("3 Sections | 30 hour length ",
                                  style: t18MediumBlack),
                              kHieght20,
                              SizedBox(
                                height: 400,
                                child: ListView.builder(
                                  itemCount: course.mainTopics.length,
                                  itemBuilder: (context, index) {
                                    return ExpansionTile(
                                      title: Text(
                                          course.mainTopics[index].heading,
                                          style: t15SemiBoldBlack),
                                      leading: Text(
                                        '${index + 1}. ',
                                        style: t15SemiBoldBlack,
                                      ),
                                      initiallyExpanded:
                                          index == 0 ? true : false,
                                      shape: const ContinuousRectangleBorder(
                                          side: BorderSide(
                                              color: Colors.transparent)),
                                      children: [
                                        SizedBox(
                                            height: 130,
                                            child: ListView.builder(
                                              itemCount: course
                                                  .mainTopics[index]
                                                  .topics
                                                  .length,
                                              itemBuilder: (context,
                                                      topicIndex) =>
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              20),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                const Icon(Icons
                                                                    .video_collection_outlined),
                                                                kWidth10,
                                                                Text(
                                                                  course
                                                                      .mainTopics[
                                                                          index]
                                                                      .topics[
                                                                          topicIndex]
                                                                      .title,
                                                                  style:
                                                                      t14MediumGrey,
                                                                )
                                                              ],
                                                            ),
                                                            Row(children: [
                                                              const Icon(Icons
                                                                  .lock_rounded),
                                                              kWidth30,
                                                              Text("10: 05",
                                                                  style:
                                                                      t14MediumGrey)
                                                            ])
                                                          ])),
                                            ))
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        }
                      }),
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCourseLessonWidget extends StatelessWidget {
  const CustomCourseLessonWidget({
    super.key,
    required this.item,
    required this.icon,
  });

  final item;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Icon(icon),
              kWidth10,
              Text(
                item.title,
                style: t14MediumGrey,
              )
            ],
          ),
          Row(children: [
            const Icon(Icons.lock_rounded),
            kWidth30,
            Text("10: 05", style: t14MediumGrey)
          ])
        ]));
  }
}

class CustomIconTextNewWidget extends StatelessWidget {
  final String label;
  final Icon icon;
  const CustomIconTextNewWidget({
    required this.icon,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 38,
          width: 38,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 0,
                    color: Colors.black12,
                    offset: Offset(0, 2))
              ]),
          child: icon,
        ),
        kWidth10,
        Text(label)
      ],
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
    final deviceWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: (deviceWidth - (deviceWidth * 0.3)) * 0.45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon),
          Text(
            label,
            style: t18MediumBlack,
          )
        ],
      ),
    );
  }
}
