import 'package:flutter/material.dart';
import 'package:tamweel/layout/category/widget/categry_tile.dart';
import 'package:tamweel/models/loan/loan_model.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_helper.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.loandata});
  final List<LoanData> loandata;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.width,
      height: AppSize.height - 56,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: loandata.length * 3,
        physics: AppHelper.scroll,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
        childAspectRatio: 0.6,),
        itemBuilder: (context, index) =>
            CategoryTile(loanData: loandata[1]),
      ),
    );
  }
}
