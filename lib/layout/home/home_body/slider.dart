import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/layout/home/home_body/home_slider_card.dart';
import 'package:tamweel/shared/constants/app_constants.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key, this.viewportFraction = 1.0});

  final double viewportFraction;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: AppSize.height * 0.3,
        autoPlay: true,
        viewportFraction: 1,
        enableInfiniteScroll: false,
        autoPlayCurve: Curves.linearToEaseOut,
        autoPlayAnimationDuration: const Duration(seconds: 2),
        scrollPhysics: const BouncingScrollPhysics(),
        onPageChanged: (index, r) {},
      ),
      itemCount: 3,
      itemBuilder: (context, index, any) {
        return const HomeSliderCard(
          name: 'برامج التمويل',
          imgUrl:
              'https://land8.com/wp-content/uploads/2016/12/83-CopyofLand8Cover1.png',
        );
      },
    );
  }
}
