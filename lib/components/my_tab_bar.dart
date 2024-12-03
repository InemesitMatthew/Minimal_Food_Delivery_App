import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: const [
          // 1st tab
          Tab(
            icon: Icon(Icons.home_outlined),
          ),

          // 2nd Tab
          Tab(
            icon: Icon(Icons.settings_outlined),
          ),

          // 3rd Tab
          Tab(
            icon: Icon(Icons.person_outline_rounded),
          ),
        ],
      ),
    );
  }
}
