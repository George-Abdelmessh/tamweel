import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class FinancingPlansCard extends StatelessWidget {
  FinancingPlansCard({super.key});
  final ScrollController _scrollController = ScrollController();

  /// auto scroll function
  // void animateToMaxMin(double min, double max, double direction, int second) {
  //   _scrollController
  //       .animateTo(max, duration: Duration(seconds: second), curve: Curves.linear)
  //       .then((value) {
  //     direction = direction == max ? min : max;
  //     animateToMaxMin(max, min, direction, second);
  //   });
  // }
  /// calling function
  // animateToMaxMin(
  // _scrollController.position.minScrollExtent,
  // _scrollController.position.maxScrollExtent,
  // _scrollController.position.maxScrollExtent,
  // 10);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.height * 0.3,
      child: ListView.separated(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: AppRadius.radius20,
          child: CachedNetworkImage(
            imageUrl:
                'https://img.rawpixel.com/private/static/images/website/2022-05/px142077-image-kwvvvktc.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=0cfd8aa6e66ad55612f900d479a9d0de',
            errorWidget: (context, url, error) =>
                const Center(child: Icon(Icons.error)),
            placeholderFadeInDuration: const Duration(seconds: 1),
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
              child: CircularProgressIndicator(
                value: downloadProgress.progress,
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: 5,
      ),
    );
  }
}
