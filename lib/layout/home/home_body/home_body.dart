import 'package:flutter/material.dart';
import 'package:tamweel/layout/home/home_body/bank_loans_card.dart';
import 'package:tamweel/layout/home/home_body/banners_handel.dart';
import 'package:tamweel/layout/home/home_body/custom_inkwell_banner.dart';
import 'package:tamweel/layout/home/home_body/financing_plans.dart';
import 'package:tamweel/layout/home/home_body/most_loans.dart';
import 'package:tamweel/layout/home/home_body/slider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_sized_box_height.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeSlider(),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          FinancingPlans(),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const HomeBanners(index: 0),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const MostLoans(),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const HomeBanners(index: 1),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const HomeBanners(index: 2),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const BankLoansCard(),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const CustomInkwellBanner(
            imgUlr:
                'https://ebi.gov.eg/wp-content/uploads/2021/07/Al-Masrafeyon_slider2.jpg',
          ),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const BankLoansCard(),
        ],
      ),
    );
  }
}
