import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/category/widget/categry_tile.dart';
import 'package:tamweel/layout/search/search_loading.dart';
import 'package:tamweel/providers/search/search_loan_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class SearchBody extends ConsumerWidget {
  SearchBody({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchProvider = ref.watch(searchFutureProvider);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: AppPadding.padding20 * 2,
              child: TextFormField(
                onFieldSubmitted: (value) {
                  ref.read(searchPhraseProvider.notifier).state = value;
                },
                cursorColor: AppColor.primary,
                controller: searchController,
                decoration: InputDecoration(
                  focusColor: AppColor.primary,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: AppColor.primary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: AppColor.primary,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      ref.read(searchPhraseProvider.notifier).state =
                          searchController.text;
                    },
                    child: Padding(
                      padding: AppPadding.padding20,
                      child: const Icon(
                        Icons.search,
                        color: AppColor.primary,
                      ),
                    ),
                  ),
                  hintText: 'بحث',
                ),
              ),
            ),
            Expanded(
              child: searchProvider.when(
                data: (loanData) => SizedBox(
                  width: AppSize.width,
                  height: AppSize.height - 56,
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: loanData.length,
                    physics: AppHelper.scroll,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                    ),
                    itemBuilder: (context, index) =>
                        CategoryTile(loandata: loanData[index]),
                  ),
                ),
                error: (error, stack) => Container(
                  color: AppColor.error,
                  width: 100,
                  height: 100,
                ),
                loading: () => const SearchLoadingScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
