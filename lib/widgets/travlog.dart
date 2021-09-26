import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelkuy/constants/style_constant.dart';
import 'package:travelkuy/models/travlog_model.dart';

class Travlog extends StatelessWidget {
  const Travlog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 181,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 16),
        itemCount: travlogs.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 16),
            width: 220,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(travlogs[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      child:
                          SvgPicture.asset('assets/svg/travlog_top_corner.svg'),
                      right: 0,
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: SvgPicture.asset(
                          'assets/svg/travelkuy_logo_white.svg'),
                    ),
                    Positioned(
                      child: SvgPicture.asset(
                          'assets/svg/travlog_bottom_gradient.svg'),
                      bottom: 0,
                    ),
                    Positioned(
                      bottom: 8,
                      left: 8,
                      child: Text(
                        'Travlog ' + travlogs[index].name,
                        style: mTravlogTitleStyle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  travlogs[index].content,
                  maxLines: 3,
                  style: mTravlogContentStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  travlogs[index].place,
                  style: mTravlogPlaceStyle,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
