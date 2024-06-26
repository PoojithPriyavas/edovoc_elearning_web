import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.deviceWidth,
    required TabController controller,
    required List<Text> tabViewChildren,
  })  : _controller = controller,
        _tabViewChildren = tabViewChildren;

  final double deviceWidth;
  final TabController _controller;
  final List<Text> _tabViewChildren;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60,
      width: deviceWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: deviceWidth - (deviceWidth * 0.3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/logo_main.png",
                  height: 45,
                ),
                SizedBox(
                    height: 60,
                    width: 600,
                    child: TabBar(
                      isScrollable: false,
                      physics: const NeverScrollableScrollPhysics(),
                      dividerColor: Colors.white,
                      indicatorColor: Colors.red,
                      controller: _controller,
                      tabs: _tabViewChildren,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
