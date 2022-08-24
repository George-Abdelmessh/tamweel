import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/home/home_body/home_slider_card.dart';
import 'package:tamweel/providers/ad/ad_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/network/end_points.dart';

class HomeSlider extends ConsumerWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ads = ref.watch(adsProvider);
    return ads.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stack) => Center(child: Text('Error: $error')),
      data: (snapshot) {
        if (snapshot.isNotEmpty) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: AppSize.height * 0.2,
              autoPlay: true,
              viewportFraction: 1,
              enableInfiniteScroll: false,
              autoPlayCurve: Curves.linearToEaseOut,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              scrollPhysics: const BouncingScrollPhysics(),
              onPageChanged: (index, r) {},
            ),
            itemCount: snapshot.length,
            itemBuilder: (context, index, any) {
              return HomeSliderCard(
                name: snapshot[index].title!,
                //TODO: correct Base url
                imgUrl: '${AppEndPoints.baseUrl}/${snapshot[index].image!}',
              );
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}
