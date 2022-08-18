import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';

import 'home_slider_card.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({Key? key, this.viewportFraction = 1.0}) : super(key: key);

  final viewportFraction;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        initialPage: 0,
        height: AppSize.height * 0.3,
        autoPlay: true,
        viewportFraction: 1,
        enableInfiniteScroll: false,
        autoPlayCurve: Curves.linearToEaseOut,
        autoPlayAnimationDuration: Duration(seconds: 2),
        scrollPhysics: BouncingScrollPhysics(),
        pauseAutoPlayOnTouch: true,
        pauseAutoPlayOnManualNavigate: true,
        onPageChanged: (index, r) {},
      ),
      itemCount: 3,
      itemBuilder: (context, index, any) {
        return HomeSliderCard(
          name: "برامج التمويل",
          imgUrl: 'https://land8.com/wp-content/uploads/2016/12/83-CopyofLand8Cover1.png',
        );
      },
    );
  }
}
