import 'package:flutter/material.dart';

class TabControllerprovider with ChangeNotifier {
  late TabController _tabController;

  TabController get tabController => _tabController;

  void setTabController(TabController controller) {
    _tabController = controller;
    notifyListeners();
  }
}
