// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:tamweel/layout/category/widget/categry_tile.dart';
import 'package:tamweel/models/loan/loan_model.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_dropdown.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.loanData});
  final List<LoanData> loanData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppPadding.padding20,
        child: Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'كل برامج التمويل',
                  style: TextStyle(
                    color: AppColor.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                CustomDropDownButton(),
              ],
            ),
            const Divider(thickness: 3, color: AppColor.secondary),
            SizedBox(
              width: AppSize.width,
              height: AppSize.height - 56,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: loanData.length,
                physics: AppHelper.scroll,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (context, index) =>
                    CategoryTile(loandata: loanData[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
