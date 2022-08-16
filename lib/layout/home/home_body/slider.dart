import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home_slider_card.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return CarouselSlider.builder(
      options: CarouselOptions(
        initialPage: 0,
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
          imgUrl: 'https://picsum.photos/seed/picsum/200/300',
        );
      },
    );;
  }
}
