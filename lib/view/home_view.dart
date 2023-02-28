import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import '../widget/hm_16sight.dart';
import '../widget/tab_bar_adventures.dart';
import '../widget/tab_bar_sights.dart';
import '../widget/tab_bar_tours.dart';
import 'package:ui_travel_1/view/tab_bar_view.dart';

class HomeView extends StatelessWidget {
  final TabController? controller;
  const HomeView({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Discover',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.ibb.co/PGv8ZzG/me.jpg",
                ),
              ),
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Material(
                  child: TabBar(
                controller: controller,
                indicator: DotIndicator(
                  color: Colors.black,
                  distanceFromCenter: 16,
                  radius: 3,
                  paintingStyle: PaintingStyle.fill,
                ),
                dividerColor: Colors.transparent,
                isScrollable: true,
                labelColor: Colors.black,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 6,
                ),
                physics: const BouncingScrollPhysics(),
                tabs: const [
                  Tab(text: 'Sights'),
                  Tab(text: 'Tours'),
                  Tab(text: 'Adventures'),
                ],
              )),
              Expanded(
                child: TabBarView(
                  controller: controller,
                  children: [
                    Center(
                      child: Column(
                        children: const [
                          Hm16Sight(),
                          SizedBox(
                            height: 10.0,
                          ),
                          TabBarSights(),
                        ],
                      ),
                    ),
                    Center(
                      child: TabBarTours(),
                    ),
                    Center(
                      child: TabBarAdventures(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
