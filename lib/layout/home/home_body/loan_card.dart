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
import 'package:tamweel/shared/style/app_decoration.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({super.key, required this.loanData});

  final LoanData loanData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding20,
      child: Container(
        width: AppSize.width * 0.4,
        // height: AppSize.height * 0.5,
        decoration: AppDecoration.decorationWhite,
        child: Padding(
          padding: AppPadding.paddingH10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: AppPadding.padding15,
                    child: ClipRRect(
                      borderRadius: AppRadius.radius10,
                      child: CachedNetworkImage(
                        //TODO: Replace with real data
                        imageUrl: '${AppEndPoints.baseUrl}/${loanData.image!}',
                        // imageUrl: loanData.image!,
                        width: AppSize.width * 0.25,
                        height: AppSize.width * 0.25,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              AutoSizeText(
                loanData.name!,
                maxFontSize: 18,
                minFontSize: 16,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
              CustomSizedBoxHeight(
                height: AppSize.height * 0.01,
              ),
              RatingBar.builder(
                ignoreGestures: true,
                initialRating: loanData.initRate! * 1.0,
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
                        fontSize: 16,
                      ),
                    ),
                  ),
                  AutoSizeText(
                    loanData.cardReachTo!,
                    maxFontSize: 16,
                    minFontSize: 16,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
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
                        fontSize: 16,
                      ),
                    ),
                  ),
                  AutoSizeText(
                    loanData.cardRepayment!,
                    maxFontSize: 16,
                    minFontSize: 16,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              CustomSizedBoxHeight(
                height: AppSize.height * 0.025,
              ),
              CustomWideButton(
                title: 'Apply'.tr(),
                onTap: () {
                  // ToDo Navigate To Loan Info
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
