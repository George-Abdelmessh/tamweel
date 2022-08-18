import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../shared/style/app_color.dart';
import '../../../shared/style/app_decoration.dart';
import '../../../shared/style/app_padding.dart';
import '../../../shared/style/app_radius.dart';

class HomeSliderCard extends StatelessWidget {
  const HomeSliderCard({
    Key? key,
    required this.name,
    required this.imgUrl,
  }) : super(key: key);

  final String name;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        decoration: AppDecoration.decorationGrey,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: AppRadius.radius20,
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) =>
                    Center(child: Icon(Icons.error)),
                placeholderFadeInDuration: Duration(seconds: 1),
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                  child: CircularProgressIndicator(
                      value: downloadProgress.progress),
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
                    Container(
                      decoration: AppDecoration.decorationOverlay,
                      padding: AppPadding.padding10,
                      child: Text(
                        name,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                        ),
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
