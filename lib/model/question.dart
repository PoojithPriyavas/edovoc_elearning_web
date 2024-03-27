class Course {
  String heading;
  List<Topic> topics;
  double coursePrice;

  Course(
      {required this.heading, required this.topics, required this.coursePrice});
}

enum ContentType { video, test, assignment }

class Topic {
  String title;
  ContentType contentType;
  String videoHeading;
  String videoLink;
  String videoDescription;
  String testQuestion;
  String assignmentQuestion;

  Topic({
    required this.title,
    required this.contentType,
    this.videoHeading = '',
    this.videoLink = '',
    this.videoDescription = '',
    this.testQuestion = '',
    this.assignmentQuestion = '',
  });
}

List<Course> coursesDummyList = [
  Course(
    heading: "Course 1",
    coursePrice: 799,
    topics: [
      Topic(
        title: "Topic 1",
        contentType: ContentType.video,
        videoHeading: "Introduction to Topic 1",
        videoLink: '''
              <div style="position:relative;padding-top:56.25%;">
                <iframe src="https://iframe.mediadelivery.net/embed/223805/4cef001b-0b94-4c36-839d-43ac5aba67bb?autoplay=false&loop=false&muted=false&preload=true&responsive=true" loading="lazy" style="border:0;position:absolute;top:0;height:100%;width:100%;" allow="accelerometer;gyroscope;autoplay;encrypted-media;picture-in-picture;" allowfullscreen="true"></iframe>
              </div>
              ''',
        videoDescription: "This video covers the basics of Topic 1",
      ),
      Topic(
        title: "Topic 2",
        contentType: ContentType.test,
        testQuestion: "What is the main concept of Topic 2?",
      ),
      Topic(
        title: "Topic 3",
        contentType: ContentType.assignment,
        assignmentQuestion: "Write an essay on Topic 3",
      ),
    ],
  ),
  Course(
    heading: "Course 2",
    coursePrice: 876,
    topics: [
      Topic(
        title: "Topic 1",
        contentType: ContentType.video,
        videoHeading: "Introduction to Topic 1",
        videoLink: "https://example.com/video1",
        videoDescription: "This video covers the basics of Topic 1",
      ),
      Topic(
        title: "Topic 2",
        contentType: ContentType.test,
        testQuestion: "What is the main concept of Topic 2?",
      ),
    ],
  ),
];
