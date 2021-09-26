import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:travelkuy/constants/color_constant.dart';
import 'package:travelkuy/constants/style_constant.dart';
import 'package:travelkuy/models/carousel_model.dart';
import 'package:travelkuy/widgets/booking_screen.dart';
import 'package:travelkuy/widgets/buttom_navigation_travelkuy.dart';
import 'package:travelkuy/widgets/popular_destination.dart';
import 'package:travelkuy/widgets/title_heading.dart';
import 'package:travelkuy/widgets/travlog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset("assets/svg/travelkuy_logo.svg"),
        elevation: 0,
      ),
      // Setting up Background color
      backgroundColor: mBackgroundColor,

      // Setting up customs buttom navigation bar
      bottomNavigationBar: const BottomNavigationTravelkuy(),

      // Body
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            const TitleHeading(
              title: 'Hi Bobi 👋 This Promos for you!',
              bottom: 12,
              top: 0,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 16, right: 16),
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width,
                    height: 160,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(carousels[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: map(carousels, (index, image) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            height: 6,
                            width: 6,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  _current == index ? mBlueColor : mGreyColor,
                            ),
                          );
                        }),
                      ),
                      Text(
                        'More...',
                        style: mMoreDiscountStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const TitleHeading(
              title: 'Lets Booking!',
              bottom: 12,
              top: 20,
            ),
            const Booking(),
            const SizedBox(height: 16),
            const TitleHeading(
              title: 'Popular destination!',
              bottom: 12,
              top: 0,
            ),
            const PopularDestination(),
            const TitleHeading(
              title: 'Travlog!',
              bottom: 12,
              top: 12,
            ),
            const Travlog(),
          ],
        ),
      ),
    );
  }
}
