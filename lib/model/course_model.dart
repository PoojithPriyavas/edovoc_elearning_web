class CourseModel {
  String courseName;
  String courseDescription;
  double coursePrice;
  int ratingAmount;
  String courseType;
  String duration;
  CourseModel(
      {required this.courseName,
      required this.courseDescription,
      required this.coursePrice,
      required this.courseType,
      required this.duration,
      required this.ratingAmount});
}

final List<CourseModel> courseList = [
  CourseModel(
      courseName: 'Spoken English basics',
      courseDescription:
          "Learn Spoken English in its advanced way of learning with Graphical representaion. Learn Spoken English in its advanced way of learning with Graphical representaion",
      coursePrice: 599,
      courseType: "intermediate course",
      duration: "1",
      ratingAmount: 255),
  CourseModel(
      courseName: 'Flutter Development',
      courseDescription:
          "Learn Spoken English in its advanced way of learning with Graphical representaion. Learn Spoken English in its advanced way of learning with Graphical representaion",
      coursePrice: 1723,
      courseType: "intermediate course",
      duration: "2",
      ratingAmount: 255),
  CourseModel(
      courseName: 'Spoken English basics',
      courseDescription:
          "Learn Spoken English in its advanced way of learning with Graphical representaion. Learn Spoken English in its advanced way of learning with Graphical representaion",
      coursePrice: 34884,
      courseType: "intermediate course",
      duration: "3",
      ratingAmount: 3924),
  CourseModel(
      courseName: 'Flutter Development',
      courseDescription:
          "Learn Spoken English in its advanced way of learning with Graphical representaion. Learn Spoken English in its advanced way of learning with Graphical representaion",
      coursePrice: 2800,
      courseType: "intermediate course",
      duration: "4",
      ratingAmount: 255),
  CourseModel(
      courseName: 'Spoken English basics',
      courseDescription:
          "Learn Spoken English in its advanced way of learning with Graphical representaion. Learn Spoken English in its advanced way of learning with Graphical representaion",
      coursePrice: 3000,
      courseType: "intermediate course",
      duration: "5",
      ratingAmount: 255),
  CourseModel(
      courseName: 'Flutter Development',
      courseDescription:
          "Learn Spoken English in its advanced way of learning with Graphical representaion. Learn Spoken English in its advanced way of learning with Graphical representaion",
      coursePrice: 20000,
      courseType: "intermediate course",
      duration: "7",
      ratingAmount: 255),
];
