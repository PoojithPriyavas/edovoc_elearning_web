import 'package:edvoc_elearning/Ui/homeScreen/Divisions/banner_container.dart';
import 'package:edvoc_elearning/Ui/homeScreen/Divisions/categories_container.dart';
import 'package:edvoc_elearning/Ui/homeScreen/Divisions/courses_container.dart';
import 'package:edvoc_elearning/Ui/homeScreen/Divisions/advertisement_container.dart';
import 'package:edvoc_elearning/Ui/homeScreen/Divisions/footer_container.dart';
import 'package:edvoc_elearning/Ui/homeScreen/Divisions/second_container.dart';
import 'package:edvoc_elearning/Ui/homeScreen/Divisions/why_join_container.dart';
import 'package:flutter/material.dart';
import 'package:smooth_scroll_multiplatform/smooth_scroll_multiplatform.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.deviceWidth,
    required this.tabController,
  });

  final TabController tabController;
  final double deviceWidth;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isHovered = false;
  bool isClicked = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: deviceHeight - 60,
      child: 
      
     
        
        
        DynMouseScroll(
          
durationMS: 500,
scrollSpeed: 4 ,
animationCurve: Curves.easeOutSine   ,
mobilePhysics: const ScrollPhysics(parent: ClampingScrollPhysics()),
          builder: (context, controller, physics){
            return ListView(
               

                controller: controller,
                    physics: physics, 
                children: [
                  BannerContainer(widget: widget),
                  SecondContainer(deviceWidth: widget.deviceWidth),
                  CoursesContainer(
                    deviceWidth: widget.deviceWidth,
                    tabController: widget.tabController,
                  ),
                  CategoriesContainer(deviceWidth: widget.deviceWidth),
                  WhyJoinContainer(widget: widget),
                  const FooterContainer(),
                  const AdvertisementContainer(),
                ]);
          }
        ),
      );
    
  }
}
