import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class CustomInkwellBanner extends StatelessWidget {
  const CustomInkwellBanner({
    super.key,
    required this.imgUlr,
  });

  final String imgUlr;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        /// ToDo Implement Inkwell On Tap
      },
      child: Container(
        height: AppSize.height * 0.20,
        width: double.infinity,
        padding: AppPadding.paddingH15,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: AppRadius.radius20,
              child: CachedNetworkImage(
                imageUrl: imgUlr,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
