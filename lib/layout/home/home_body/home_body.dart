import 'package:flutter/material.dart';
import 'package:tamweel/layout/home/home_body/bank_loans_card.dart';
import 'package:tamweel/layout/home/home_body/custom_banner.dart';
import 'package:tamweel/layout/home/home_body/custom_inkwell_banner.dart';
import 'package:tamweel/layout/home/home_body/financing_plans_card.dart';
import 'package:tamweel/layout/home/home_body/most_loans.dart';
import 'package:tamweel/layout/home/home_body/slider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeSlider(),
          const SizedBox(
            height: 15,
          ),
          FinancingPlansCard(),
          const SizedBox(
            height: 15,
          ),
          const CustomBanner(
            loanData: '',
            text: 'قرض شــــــــراء الجرار الزراعي',
            imgUlr:
                'https://thumbs.dreamstime.com/b/photo-gold-bitcoin-cryptocurrency-coin-moving-along-black-banner-digital-pcb-tech-pattern-ideal-text-etc-bitcoin-154826691.jpg',
          ),
          const SizedBox(
            height: 15,
          ),
          const MostLoans(),
          const SizedBox(
            height: 15,
          ),
          const CustomBanner(
            loanData: '',
            text: 'قــرض بـــــاب رزق',
            imgUlr:
                'https://thumbs.dreamstime.com/b/fruits-vegetables-advertising-sign-store-dark-background-name-english-205506033.jpg',
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomBanner(
            loanData: '',
            text: 'قرض تمويل وحدات الغاز والسماد العضوي بالريف',
            imgUlr:
                'https://www.lbcgroup.tv/newsimages/News-P-642485-637861980130826864.jpg',
          ),
          const SizedBox(
            height: 15,
          ),
          const BankLoansCard(),
          const SizedBox(
            height: 15,
          ),
          const CustomInkwellBanner(
            imgUlr:
                'https://ebi.gov.eg/wp-content/uploads/2021/07/Al-Masrafeyon_slider2.jpg',
          ),
          const SizedBox(
            height: 15,
          ),
          const BankLoansCard(),
        ],
      ),
    );
  }
}
