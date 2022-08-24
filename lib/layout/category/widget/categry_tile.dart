import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tamweel/models/loan/loan_model.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_sized_box_height.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/network/end_points.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.loanData});

  final LoanData loanData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding10,
      child: Padding(
        padding: AppPadding.padding10 ,
        child: Container(
          decoration: BoxDecoration(
          color: AppColor.white,
            borderRadius: AppRadius.radius20,
          ),
          child: Padding(
            padding: AppPadding.padding20 * 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://images.akhbarelyom.com//images/images/medium/20210504102723802.jpg',
                      // '${AppEndPoints.baseUrl}/${loanData.image!}',
                      width: AppSize.width ,
                      // height: AppSize.height * 0.25,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                CustomSizedBoxHeight(
                  height: AppSize.height * 0.01,
                ),
                AutoSizeText(
                  loanData.name!,
                  maxFontSize: 18,
                  minFontSize: 16,
                  maxLines: 1,
                  style: const TextStyle(fontSize: 18, color: AppColor.black),
                ),
                CustomSizedBoxHeight(
                  height: AppSize.height * 0.01,
                ),
                RatingBar.builder(
                  ignoreGestures: true,
                  initialRating:
                      loanData.initRate == null ? 1 : loanData.initRate!.toDouble(),
                  minRating: 1,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                  itemSize: 20,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: AppColor.secondary,
                  ),
                  onRatingUpdate: (rating) {
                    // print(rating);
                  },
                ),
                CustomSizedBoxHeight(
                  height: AppSize.height * 0.01,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        'ReachTo'.tr(),
                        maxFontSize: 16,
                        minFontSize: 16,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 16, color: AppColor.secondary),
                      ),
                    ),
                    AutoSizeText(
                      loanData.cardReachTo!,
                      maxFontSize: 16,
                      minFontSize: 16,
                      maxLines: 1,
                      style:
                          const TextStyle(fontSize: 16, color: AppColor.secondary),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        'RepaymentPeriod'.tr(),
                        maxFontSize: 16,
                        minFontSize: 16,
                        maxLines: 1,
                        style: const TextStyle(
                            fontSize: 16, color: AppColor.secondary),
                      ),
                    ),
                    AutoSizeText(
                      loanData.cardRepayment!,
                      maxFontSize: 16,
                      minFontSize: 16,
                      maxLines: 1,
                      style:
                          const TextStyle(fontSize: 16, color: AppColor.secondary),
                    ),
                  ],
                ),
                CustomSizedBoxHeight(
                  height: AppSize.height * 0.01,
                ),
                CustomWideButton(
                  title: 'Apply'.tr(),
                  onTap: () {
                    // ToDo Navigate To Loan Info
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
