import 'package:edvoc_elearning/Core/style.dart';
import 'package:edvoc_elearning/presentation/okok.dart';
import 'package:edvoc_elearning/presentation/screen_home_dekstop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> with TickerProviderStateMixin {
  bool isHover = false;

  final _tabViewChildren = [
    Text("Home", style: t15MediumBlack),
    Text("Courses", style: t15MediumBlack),
    Text("Favourates", style: t15MediumBlack),
    Text("Contact Us", style: t15MediumRed)
  ];

  late TabController _controller;
  int _selectedIndex = 0;
  bool first = false;

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return ScreenTypeLayout.builder(
        desktop: (p0) => ScreenHomeDesktop(
            deviceHeight: deviceHeight,
            deviceWidth: deviceWidth,
            controller: _controller,
            tabViewChildren: _tabViewChildren),
        // desktop: (p0) => VideoApp(),
        tablet: (p0) => VideoApp());
  }
}
