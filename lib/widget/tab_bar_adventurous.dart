import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_travel_1/model/adventure_model.dart';

class TabBarAdventurous extends StatelessWidget {
  const TabBarAdventurous({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "Feeling Adventurous ?",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              Text("Show All",
              style: TextStyle(
              fontSize: 15.0,
              ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.only(
              top: 7,
              bottom: 7,
            ),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: adventures.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final data = adventures[index];
                return Container(
                  margin: const EdgeInsets.only(right: 25),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/${data.iconUrl}',
                        height: 35,
                        color: Colors.blue[800],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        data.name,
                        style: const TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
