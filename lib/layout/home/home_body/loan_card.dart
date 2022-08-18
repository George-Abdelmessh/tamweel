import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_decoration.dart';
import 'package:tamweel/shared/style/app_padding.dart';

import '../../../shared/custom_widgets/custom_wide_button.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding20,
      child: Container(
        width: AppSize.width * 0.4,
        //height: AppSize.height * 0.5,

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
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://images.akhbarelyom.com//images/images/medium/20210504102723802.jpg',
                      width: AppSize.width * 0.25,
                      height: AppSize.width * 0.25,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Text('قرض مستورة'),
              SizedBox(
                height: 10,
              ),
              RatingBar.builder(
                ignoreGestures: true,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemSize: 20,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: AppColor.secondary,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(child: Text('ReachTo'.tr())),
                  Text('40000 الف'),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text('RepaymentPeriod'.tr())),
                  Text('4 سنوات'),
                ],
              ),
              SizedBox(height: 15,),
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
