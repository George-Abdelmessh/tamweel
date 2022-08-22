import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_decoration.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class HomeSliderCard extends StatelessWidget {
  const HomeSliderCard({
    super.key,
    required this.name,
    required this.imgUrl,
  });

  final String name;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: DecoratedBox(
        decoration: AppDecoration.decorationGrey,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: AppRadius.radius20,
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
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
            Container(
              decoration: AppDecoration.decorationOverlay,
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: AppPadding.padding15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: AppColor.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
