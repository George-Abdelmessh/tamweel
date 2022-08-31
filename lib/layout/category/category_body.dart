import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/category/widget/category_screen.dart';
import 'package:tamweel/providers/category/filter_provider.dart';
import 'package:tamweel/providers/category/loan_provider.dart';
import 'package:tamweel/shared/custom_widgets/Hud/custom_shimmer_hud.dart';
import 'package:tamweel/shared/custom_widgets/Hud/shimmers/category_shimmer.dart';
import 'package:tamweel/shared/custom_widgets/custom_dropdown.dart';
import 'package:tamweel/shared/style/app_color.dart';

class CategoryBody extends ConsumerWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loanProvider = ref.watch(filterFutureProvider);
    final allLoansProvider = ref.watch(LoanFutureProvider);
  final indexProvider = ref.watch(catIndexProvider);
    return CustomShimmerHudWidget(
      shimmerWidget: const CategoryShimmer(),
      child: Scaffold(
        backgroundColor: AppColor.grey,
        body: loanProvider.when(
          data: (data) {
            // make a new list that contains all loans in all cardloans
            //if user filter all loans, send that list
            //else if user for example picks category number 4
            //then send data[4]
            //to make it dynamic, the drop down button, on changed function sets a
            //provider that we need to create that holds picked index -1

            return allLoansProvider.when(data: (data2) {
              return CategoryScreen(loanData: indexProvider == -1? data2 : data[indexProvider].loans!);

            },error: (error, stack) => Container(
              color: AppColor.error,
              width: 100,
              height: 100,
            ),
              loading: () => const SizedBox.shrink(),);
           },
          error: (error, stack) => Container(
            color: AppColor.error,
            width: 100,
            height: 100,
          ),
          loading: () => const SizedBox.shrink(),
        ),
      ),
    );
  }
}
