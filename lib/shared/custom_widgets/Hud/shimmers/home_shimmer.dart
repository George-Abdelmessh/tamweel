import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.height,
      width: AppSize.width,
      child: Shimmer.fromColors(
        baseColor: AppColor.shimmer,
        highlightColor: AppColor.shimmer.withOpacity(0.75),
        period: const Duration(seconds: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppSize.height * 0.05,
            ),
            Padding(
              padding: AppPadding.paddingH005,
              child: Container(
                height: AppSize.height * 0.2,
                width: AppSize.width,
                decoration: BoxDecoration(
                  borderRadius: AppRadius.radius20,
                  color: AppColor.shimmer,
                ),
              ),
            ),
            SizedBox(
              height: AppSize.height * 0.03,
            ),
            Padding(
              padding: AppPadding.paddingH005,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: AppSize.height * 0.2,
                    width: AppSize.width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: AppRadius.radius20,
                      color: AppColor.shimmer,
                    ),
                  ),
                  Container(
                    height: AppSize.height * 0.2,
                    width: AppSize.width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: AppRadius.radius20,
                      color: AppColor.shimmer,
                    ),
                  ),
                  Container(
                    height: AppSize.height * 0.2,
                    width: AppSize.width * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: AppRadius.radius20,
                      color: AppColor.shimmer,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.height * 0.03,
            ),
            Padding(
              padding: AppPadding.paddingH005,
              child: Container(
                height: AppSize.height * 0.2,
                width: AppSize.width,
                decoration: BoxDecoration(
                  borderRadius: AppRadius.radius20,
                  color: AppColor.shimmer,
                ),
              ),
            ),
            SizedBox(
              height: AppSize.height * 0.03,
            ),
            Padding(
              padding: AppPadding.paddingH005,
              child: Text(
                'MostLoans'.tr(),
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: AppPadding.paddingH005,
                child: Container(
                  height: AppSize.height * 0.2,
                  width: AppSize.width,
                  decoration: BoxDecoration(
                    borderRadius: AppRadius.radiusTop30,
                    color: AppColor.shimmer,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
