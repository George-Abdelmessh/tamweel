import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/layout/home/home_body/loan_card.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_sized_box_width.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_decoration.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class BankLoansCard extends StatelessWidget {
  const BankLoansCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.padding20,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: AppDecoration.decorationGrey,
      width: double.infinity,
      height: AppSize.height * 0.55,
      child: Column(
        children: [
          const AutoSizeText(
            'قروض البنك الزراعي المصري',
            maxFontSize: 28,
            maxLines: 1,
            minFontSize: 18,
            style: TextStyle(
              color: AppColor.secondary,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: AppSize.width * 0.35,
                    height: AppSize.height * 0.5,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://media.gettyimages.com/photos/glass-front-of-a-bank-building-picture-id159241452?s=612x612',
                        fit: BoxFit.fill,
                        errorWidget: (context, url, error) =>
                            const Center(child: Icon(Icons.error)),
                        placeholderFadeInDuration: const Duration(seconds: 1),
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                            value: downloadProgress.progress,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const LoanCard(),
                    separatorBuilder: (context, index) => CustomSizedBoxWidth(
                      width: AppSize.width * 0.015,
                    ),
                    itemCount: 5,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
