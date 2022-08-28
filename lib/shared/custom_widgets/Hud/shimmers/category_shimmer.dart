import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

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
          children: [
            SizedBox(
              height: AppSize.height * 0.01,
            ),
            Padding(
              padding: AppPadding.paddingH002,
              child: Container(
                height: AppSize.height * 0.07,
                width: AppSize.width,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: AppRadius.radius20,
                ),
              ),
            ),
            SizedBox(
              height: AppSize.height * 0.03,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: AppSize.height * 0.02,
                  childAspectRatio: 0.8,
                ),
                physics: AppHelper.neverScroll,
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: AppPadding.paddingH005,
                    child: Container(
                      height: AppSize.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: AppRadius.radius20,
                        color: AppColor.shimmer,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
