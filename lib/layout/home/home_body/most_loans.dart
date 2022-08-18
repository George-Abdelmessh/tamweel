import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_decoration.dart';
import 'package:tamweel/shared/style/app_padding.dart';

import 'loan_card.dart';

class MostLoans extends StatelessWidget {
  const MostLoans({Key? key}) : super(key: key);

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
                style: TextStyle(
                  color: AppColor.secondary,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Divider(
                  color: AppColor.secondary,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => LoanCard(),
              separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
