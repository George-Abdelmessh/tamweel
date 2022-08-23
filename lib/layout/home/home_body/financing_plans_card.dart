import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_decoration.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class FinancingPlansCard extends StatelessWidget {
  const FinancingPlansCard(
      {super.key, required this.name, required this.image,});

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.width * 0.35,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: AppRadius.radius20,
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              errorWidget: (context, url, error) =>
                  const Center(child: Icon(Icons.error)),
            ),
          ),
          Container(
            decoration: AppDecoration.decorationOverlay,
            height: double.infinity,
          ),
          Positioned(
            bottom: 10,
            child: Container(
              width: AppSize.width * 0.35,
              padding: AppPadding.paddingH20,
              child: AutoSizeText(
                name,
                minFontSize: 18,
                maxFontSize: 25,
                maxLines: 2,
                style: const TextStyle(
                  color: AppColor.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
