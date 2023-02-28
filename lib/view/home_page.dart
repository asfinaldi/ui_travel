import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/tab_bar_adventures.dart';
import '../widget/tab_bar_sights.dart';
import '../widget/tab_bar_tours.dart';
import 'home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;

  List showWidget = const [
    HomeView(),
    Center(
      child: Text('Search'),
    ),
    Center(
      child: Text('Bookmark'),
    ),
    Center(
      child: Text('Setelan'),
    ),
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg'),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/bookmark.svg'),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/setting.svg'),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}
