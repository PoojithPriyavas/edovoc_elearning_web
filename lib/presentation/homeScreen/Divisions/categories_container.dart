import 'package:edvoc_elearning/Core/colors.dart';
import 'package:edvoc_elearning/Core/constants.dart';
import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/Widgets/custom_category_card_widget.dart';
import 'package:edvoc_elearning/Widgets/custom_elevated_button_two.dart';
import 'package:flutter/material.dart';

class CategoriesContainer extends StatefulWidget {
  const CategoriesContainer({
    super.key,
    required this.deviceWidth,
  });

  final double deviceWidth;

  @override
  State<CategoriesContainer> createState() => _CategoriesContainerState();
}

class _CategoriesContainerState extends State<CategoriesContainer> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      width: widget.deviceWidth,
      color: whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 150, bottom: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Text(
                  "Browse Categories",
                  style: t20SemiBoldDarkGrey,
                ),
                CustomElevatedButtonTwo(
                  backgroundColor: blueColor,
                  label: "View All",
                  overColor: whiteColor,
                  tintColor: whiteColor,
                  callbackAction: () {},
                )
              ],
            ),
          ),
          const SizedBox(
            height: 190,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 150),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: PageScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    kWidth5,
                    CategoryCardsWidget(),
                    kWidth30,
                    CategoryCardsWidget(),
                    kWidth30,
                    CategoryCardsWidget(),
                    kWidth30,
                    CategoryCardsWidget(),
                    kWidth30,
                    CategoryCardsWidget(),
                    kWidth30,
                    CategoryCardsWidget(),
                    kWidth30,
                    CategoryCardsWidget(),
                    kWidth30,
                    CategoryCardsWidget(),
                    kWidth30,
                    CategoryCardsWidget(),
                    kWidth30,
                    CategoryCardsWidget(),
                    kWidth30,
                    CategoryCardsWidget(),
                    kWidth30,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
