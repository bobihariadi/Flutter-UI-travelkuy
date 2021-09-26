import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelkuy/constants/color_constant.dart';
import 'package:travelkuy/constants/style_constant.dart';

class Booking extends StatelessWidget {
  const Booking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144,
      margin: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.only(left: 16),
                  height: 64,
                  decoration: BoxDecoration(
                    color: mFillColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: mFillColor, width: 2),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/service_flight_icon.svg',
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Flight', style: mServiceTitleStyle),
                            Text(
                              'FeelFreedom',
                              style: mServiceSubtitleStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.only(left: 16),
                  height: 64,
                  decoration: BoxDecoration(
                    color: mFillColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: mFillColor, width: 2),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/service_train_icon.svg',
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Train', style: mServiceTitleStyle),
                            Text('Intercity', style: mServiceSubtitleStyle),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.only(left: 16),
                  height: 64,
                  decoration: BoxDecoration(
                    color: mFillColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: mFillColor, width: 2),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/service_hotel_icon.svg',
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Hotel', style: mServiceTitleStyle),
                            Text(
                              'Let\'s take a break',
                              style: mServiceSubtitleStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  padding: const EdgeInsets.only(left: 16),
                  height: 64,
                  decoration: BoxDecoration(
                    color: mFillColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: mFillColor, width: 2),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/service_car_rental_icon.svg',
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Car Rental', style: mServiceTitleStyle),
                            Text(
                              'Arround the city',
                              style: mServiceSubtitleStyle,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
