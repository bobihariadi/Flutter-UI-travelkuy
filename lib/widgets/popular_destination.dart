import 'package:flutter/material.dart';
import 'package:travelkuy/constants/color_constant.dart';
import 'package:travelkuy/constants/style_constant.dart';
import 'package:travelkuy/models/popular_destination_model.dart';

class PopularDestination extends StatelessWidget {
  const PopularDestination({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 16, right: 16),
        scrollDirection: Axis.horizontal,
        itemCount: populars.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              height: 140,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: mBorderColor, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 16),
                child: Column(
                  children: [
                    Image.asset(
                      populars[index].image,
                      height: 74,
                    ),
                    Text(
                      populars[index].name,
                      style: mPopularDestinationTitleStyle,
                    ),
                    Text(
                      populars[index].country,
                      style: mPopularDestinationSubtitleStyle,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
