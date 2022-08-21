import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/layout/home/home_body/loan_card.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_sized_box_width.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_decoration.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class MostLoans extends StatelessWidget {
  const MostLoans({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.padding20,
      margin: AppPadding.paddingH15,
      decoration: AppDecoration.decorationGrey,
      width: double.infinity,
      height: AppSize.height * 0.55,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'MostLoans'.tr(),
                style: const TextStyle(
                  color: AppColor.secondary,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomSizedBoxWidth(
                width: AppSize.width * 0.015,
              ),
              const Expanded(
                child: Divider(
                  color: AppColor.secondary,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const LoanCard(),
              separatorBuilder: (context, index) => CustomSizedBoxWidth(
                width: AppSize.width * 0.005,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
