import 'package:flutter/material.dart';
import '../model/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        // after the label there seems to be a underline i do not know how to
        // get rid of that and i dont mean the line that comes beneath the text 
        // no theres another line 
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}
