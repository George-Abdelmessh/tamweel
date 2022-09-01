import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/Error/no_connection.dart';
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
      child: RefreshIndicator(
        onRefresh: () => ref.refresh(filterFutureProvider.future),
        color: AppColor.primary,
        child: Scaffold(
          backgroundColor: AppColor.grey,
          body: loanProvider.when(
            data: (data) {
              return allLoansProvider.when(
                data: (data2) {
                  return CategoryScreen(
                    loanData: indexProvider == -1
                        ? data2
                        : data[indexProvider].loans!,
                  );
                },
                error: (error, stack) =>
                    const NoConnection(text: 'تعذر الاتصال'),
                loading: () => const SizedBox.shrink(),
              );
            },
            error: (error, stack) => const NoConnection(text: 'تعذر الاتصال'),
            loading: () => const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}
