import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/home/home_body/home_slider_card.dart';
import 'package:tamweel/providers/ad/ad_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';

class HomeSlider extends ConsumerWidget {
  const HomeSlider({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
  final adProvider = ref.watch(adsProvider.notifier);
  final ads = ref.watch(adsProvider);

    return FutureBuilder(
      future: adProvider.getData(context),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.waiting ?
            const Center(child: CircularProgressIndicator(),)
         : CarouselSlider.builder(
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
          itemCount: ads.length,
          itemBuilder: (context, index, any) {
            return  HomeSliderCard(
              name: ads[index].title!,
              imgUrl: ads[index].image!,
            );
          },
        );
      }
    );
  }
}
