import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/category/widget/category_screen.dart';
import 'package:tamweel/providers/category/loan_provider.dart';
import 'package:tamweel/shared/custom_widgets/custom_hud.dart';
import 'package:tamweel/shared/style/app_color.dart';

class CategoryBody extends ConsumerWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loanProvider = ref.watch(LoanFutureProvider);
    return CustomHudWidget(
      child: Scaffold(
        backgroundColor: AppColor.grey,
        body: loanProvider.when(
            data: (data) => CategoryScreen(loandata: data),
            error: (error, stack) => Container(
                  color: AppColor.error,
                  width: 100,
                  height: 100,
                ),
            loading: () => const SizedBox.shrink(),),
      ),
    );
  }
}
