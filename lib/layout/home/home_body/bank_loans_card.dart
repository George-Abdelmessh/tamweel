import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/home/home_body/loan_card.dart';
import 'package:tamweel/providers/bank_loan/bank_loan_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_sized_box_width.dart';
import 'package:tamweel/shared/network/end_points.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_decoration.dart';
import 'package:tamweel/shared/style/app_padding.dart';


class BankLoansCard extends ConsumerWidget {
  const BankLoansCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bankLoansList = ref.watch(bankLoanProvider);
    return bankLoansList.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stack) => Container(),
      data: (snapshot) {
        if (snapshot.isNotEmpty) {
          if (index <= snapshot.length) {
            return Container(
              padding: AppPadding.padding20,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: AppDecoration.decorationGrey,
              width: double.infinity,
              height: AppSize.width * 0.98,
              child: Column(
                children: [
                  Row(
                    children: [
                      AutoSizeText(
                        snapshot[index].name!,
                        maxFontSize: 28,
                        maxLines: 1,
                        minFontSize: 18,
                        style: const TextStyle(
                          color: AppColor.secondary,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: AppSize.width * 0.35,
                            height: AppSize.height * 0.375,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              child: InkWell(
                                onTap: () {
                                  /// TODo Navigate To Bank Loans
                                },
                                child: CachedNetworkImage(
                                  imageUrl:
                                      '${AppEndPoints.baseUrl}/${snapshot[index].logo!}',
                                  fit: BoxFit.fill,
                                  errorWidget: (context, url, error) =>
                                      const Center(child: Icon(Icons.error)),
                                  placeholderFadeInDuration:
                                      const Duration(seconds: 1),
                                  progressIndicatorBuilder:
                                      (context, url, downloadProgress) => Center(
                                    child: CircularProgressIndicator(
                                      value: downloadProgress.progress,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, ind) => LoanCard(
                              loanData: snapshot[index].loans![ind],
                            ),
                            separatorBuilder: (context, index) =>
                                CustomSizedBoxWidth(
                              width: AppSize.width * 0.015,
                            ),
                            itemCount: snapshot[index].loans!.length,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return Container();
          }
        } else {
          return Container();
        }
      },
    );
  }
}
