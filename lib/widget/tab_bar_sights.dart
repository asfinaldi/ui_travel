// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ui_travel_1/model/sights_model.dart';

class TabBarSights extends StatelessWidget {
  const TabBarSights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 300,
            //+width: 200,
            child: ListView.builder(
                itemCount: allData.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final data = allData[index];
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      // height: 100,
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/${data.imgUrl}'),
                          fit: BoxFit.cover,
                          opacity: 0.7,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
