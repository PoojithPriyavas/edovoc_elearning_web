import 'package:edvoc_elearning/Core/style.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class CategoryCardsWidget extends StatefulWidget {
  const CategoryCardsWidget({super.key});

  @override
  State<CategoryCardsWidget> createState() => _CategoryCardsWidgetState();
}

class _CategoryCardsWidgetState extends State<CategoryCardsWidget> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        height: 165,
        width: 240,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: const Offset(0, 0),
                blurRadius: isHovered ? 6 : 0,
                spreadRadius: isHovered ? 3 : 0,
              ),
            ]),
        child: Stack(
          children: [
            Container(
              height: 165,
              width: 240,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/card_image.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            GlassmorphicContainer(
                height: 165,
                width: 240,
                border: 0,
                borderRadius: 10,
                blur: isHovered ? 20 : 0,
                linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      const Color(0xFFffffff).withOpacity(0.1),
                      const Color(0xFFFFFFFF).withOpacity(0.05),
                    ],
                    stops: const [
                      0.1,
                      1,
                    ]),
                borderGradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xFFffffff).withOpacity(0.5),
                    const Color((0xFFFFFFFF)).withOpacity(0.5),
                  ],
                ),
                child: isHovered
                    ? Center(
                        child: Text(
                        "Spoken English Advanced",
                        style: t15SemiBoldDarkBlue,
                        textAlign: TextAlign.center,
                      ))
                    : null),
          ],
        ),
      ),
    );
  }
}