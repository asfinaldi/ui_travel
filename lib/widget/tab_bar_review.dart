// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TabBarReview extends StatelessWidget {
  final TabController? controller;

  const TabBarReview({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          // margin: const EdgeInsets.symmetric(
          //   horizontal: 12,
          // ),
          child: TabBar(
            controller: controller,
            indicator: const BoxDecoration(
              color: Colors.transparent,
            ),
            dividerColor: Colors.transparent,
            isScrollable: true,
            labelColor: Colors.grey,
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
              Tab(text: 'Overview'),
              Tab(text: 'Review'),
            ],
          ),
        ),
      ],
    );
  }
}
