// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../widget/tab_bar_adventures.dart';
import '../widget/tab_bar_sights.dart';
import '../widget/tab_bar_tours.dart';

class HmTcTabBarView extends StatelessWidget {
  final TabController? controller;
  const HmTcTabBarView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.only(
        left: 25,
      ),
      child: TabBarView(
        controller: controller,
        children:  [
          TabBarSights(),
          TabBarTours(),
          TabBarAdventures(),
        ],
      ),
    );
  }
}
