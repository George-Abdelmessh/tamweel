import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../shared/constants/app_constants.dart';
import '../../../shared/style/app_color.dart';
import '../../../shared/style/app_decoration.dart';
import '../../../shared/style/app_padding.dart';
import '../../../shared/style/app_radius.dart';
import 'loan_card.dart';

class BankLoansCard extends StatelessWidget {
  const BankLoansCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.padding20,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: AppDecoration.decorationGrey,
      width: double.infinity,
      height: AppSize.height * 0.55,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'قروض البنك الزراعي المصري',
                style: TextStyle(
                    color: AppColor.secondary,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: AppSize.width * 0.35,
                  height: AppSize.height * 0.5,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://media.gettyimages.com/photos/glass-front-of-a-bank-building-picture-id159241452?s=612x612',
                      fit: BoxFit.fill,
                      errorWidget: (context, url, error) =>
                          Center(child: Icon(Icons.error)),
                      placeholderFadeInDuration: Duration(seconds: 1),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                              child: CircularProgressIndicator(
                                  value: downloadProgress.progress)),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => LoanCard(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemCount: 5,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
