import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_decoration.dart';
import 'package:tamweel/shared/style/app_padding.dart';

import '../../../shared/style/app_radius.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    Key? key,
    required this.imgUlr,
    required this.text,
    this.loanData,
  }) : super(key: key);

  final String imgUlr;
  final String text;
  final loanData;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            decoration: AppDecoration.decorationOverlay,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              width: AppSize.width * 0.35,
              height: AppSize.height * 0.12,
              child: AutoSizeText(
                text,
                minFontSize: 16,
                maxFontSize: 35,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              width: AppSize.width * 0.3,
              child: CustomWideButton(
                title: 'ShowMore'.tr(),
                onTap: () {
                  // ToDo Navigate To Loan Screen
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
