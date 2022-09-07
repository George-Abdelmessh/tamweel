import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/home/home_body/custom_banner.dart';
import 'package:tamweel/providers/bannners/banners_provider.dart';
import 'package:tamweel/shared/network/end_points.dart';

class HomeBanners extends ConsumerWidget {
  const HomeBanners({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bannerList = ref.watch(bannersProvider);
    return bannerList.when(
      loading: () => Container(),
      error: (error, stack) => Container(),
      data: (snapshot) {
        if (snapshot.isEmpty) {
          return Container();
        } else {
          if (index <= snapshot.length) {
            return CustomBanner(
              loanID: snapshot[index].id!,
              imgUlr: '${AppEndPoints.baseUrl}/${snapshot[index].image!}',
              text: snapshot[index].title!,
            );
          } else {
            return Container();
          }
        }
      },
    );
  }
}
