import 'package:flutter/material.dart';
import 'package:tamweel/layout/home/home_body/bank_loans_card.dart';
import 'package:tamweel/layout/home/home_body/custom_banner.dart';
import 'package:tamweel/layout/home/home_body/custom_inkwell_banner.dart';
import 'package:tamweel/layout/home/home_body/financing_plans_card.dart';
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
          FinancingPlansCard(),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const CustomBanner(
            loanData: '',
            text: 'قرض شــــــــراء الجرار الزراعي',
            imgUlr:
                'https://thumbs.dreamstime.com/b/photo-gold-bitcoin-cryptocurrency-coin-moving-along-black-banner-digital-pcb-tech-pattern-ideal-text-etc-bitcoin-154826691.jpg',
          ),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const MostLoans(),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const CustomBanner(
            loanData: '',
            text: 'قــرض بـــــاب رزق',
            imgUlr:
                'https://thumbs.dreamstime.com/b/fruits-vegetables-advertising-sign-store-dark-background-name-english-205506033.jpg',
          ),
          CustomSizedBoxHeight(
            height: AppSize.height * 0.015,
          ),
          const CustomBanner(
            loanData: '',
            text: 'قرض تمويل وحدات الغاز والسماد العضوي بالريف',
            imgUlr:
                'https://www.lbcgroup.tv/newsimages/News-P-642485-637861980130826864.jpg',
          ),
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
