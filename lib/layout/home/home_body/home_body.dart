import 'package:flutter/material.dart';
import 'package:tamweel/layout/home/home_body/most_loans.dart';
import 'bank_loans_card.dart';
import 'custom_banner.dart';
import 'custom_inkwell_banner.dart';
import 'financing_plans_card.dart';

import 'slider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeSlider(),
          SizedBox(
            height: 15,
          ),
          FinancingPlansCard(),
          SizedBox(
            height: 15,
          ),
          CustomBanner(
            loanData: "",
            text: 'قرض شــــــــراء الجرار الزراعي',
            imgUlr:
                'https://thumbs.dreamstime.com/b/photo-gold-bitcoin-cryptocurrency-coin-moving-along-black-banner-digital-pcb-tech-pattern-ideal-text-etc-bitcoin-154826691.jpg',
          ),
          SizedBox(
            height: 15,
          ),
          MostLoans(),
          SizedBox(
            height: 15,
          ),
          CustomBanner(
            loanData: "",
            text: 'قــرض بـــــاب رزق',
            imgUlr:
                'https://thumbs.dreamstime.com/b/fruits-vegetables-advertising-sign-store-dark-background-name-english-205506033.jpg',
          ),
          SizedBox(
            height: 15,
          ),
          CustomBanner(
            loanData: "",
            text: 'قرض تمويل وحدات الغاز والسماد العضوي بالريف',
            imgUlr:
                'https://www.lbcgroup.tv/newsimages/News-P-642485-637861980130826864.jpg',
          ),
          SizedBox(
            height: 15,
          ),
          BankLoansCard(),
          SizedBox(
            height: 15,
          ),
          CustomInkwellBanner(
            imgUlr:
                'https://ebi.gov.eg/wp-content/uploads/2021/07/Al-Masrafeyon_slider2.jpg',
          ),
          SizedBox(height: 15,),
          BankLoansCard(),
        ],
      ),
    );
  }
}
