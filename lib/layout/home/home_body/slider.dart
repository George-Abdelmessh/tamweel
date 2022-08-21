import 'package:async/async.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/home/home_body/home_slider_card.dart';
import 'package:tamweel/providers/ad/ad_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/network/end_points.dart';

class HomeSlider extends ConsumerStatefulWidget {
  const HomeSlider({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeSliderState();
}

class _HomeSliderState extends ConsumerState<HomeSlider> {
  late AsyncMemoizer _memoizer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _memoizer = AsyncMemoizer();
  }

  @override
  Widget build(BuildContext context) {
    final adProvider = ref.watch(adsProvider.notifier);
    final ads = ref.watch(adsProvider);

    Future<Object> _fetchData() async {
      return _memoizer.runOnce(() async {
        return adProvider.getData(context);
      });
    }

    return FutureBuilder(
      future: _fetchData(),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.waiting
            ? const Center(
                child: CircularProgressIndicator(),
              )
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
                  return HomeSliderCard(
                    name: ads[index].title!,
                    //TODO: correct Base url
                    imgUrl: '${AppEndPoints.ads}/${ads[index].image!}',
                  );
                },
              );
      },
    );
  }
}
