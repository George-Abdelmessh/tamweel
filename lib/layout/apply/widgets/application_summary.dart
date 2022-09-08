import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/providers/apply/apply_request_provider.dart';
import 'package:tamweel/providers/auth/user_details_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/network/end_points.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class ApplicationSummary extends ConsumerWidget {
  const ApplicationSummary({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stepper = ref.watch(applyStateProvider.notifier);
    final state = ref.watch(applyStateProvider);
    final loanData = ref.watch(loanDataProvider);
    final userData = ref.watch(userDetailsProvider);

    final answers = state.answers['steps'][state.steps.length - 1] as Map;
    final images = state.answers['images[]'];


    // final applyState = ref.watch(applyStateProvider);
    return SingleChildScrollView(
      physics: AppHelper.scroll,
      child: SizedBox(
        width: AppSize.width,
        child: Padding(
          padding: AppPadding.paddingH005,
          child: Column(
            children: [
              SizedBox(
                height: AppSize.height * 0.02,
              ),
              Text(
                loanData!.name!,
                style: TextStyle(
                  fontSize: AppSize.height * 0.03,
                  fontWeight: FontWeight.bold,
                  color: AppColor.primary,
                ),
              ),
              ClipRect(
                child: SizedBox(
                  // width: AppSize.width * 0.4,
                  height: AppSize.height * 0.15,
                  child: CachedNetworkImage(
                    imageUrl: '${AppEndPoints.baseUrl}/${loanData.image!}',
                    fit: BoxFit.fitHeight,
                    // width: AppSize.width,
                    height: AppSize.width * 0.4,
                    errorWidget: (context, url, error) => const Center(
                      child: CircularProgressIndicator(
                        color: AppColor.secondary,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: AppSize.height * 0.02,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: AppSize.height * 0.05,
                  ),
                  //map answers map to show all user answers untill now
                  ...answers.keys.map(
                    (keys) => Padding(
                      padding: AppPadding.padding20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (keys != '')
                            Text(
                              '$keys:',
                              style: TextStyle(
                                fontSize: AppSize.height * 0.02,
                                fontWeight: FontWeight.bold,
                                color: AppColor.primary,
                              ),
                            )
                          else
                            const SizedBox.shrink(),
                          if (answers[keys] is Map)
                            ...answers[keys].keys.map(
                                  (keys2) => Text(
                                    '$keys2: \t\t${answers[keys][keys2]}',
                                    style: TextStyle(
                                      fontSize: AppSize.height * 0.019,
                                    ),
                                  ),
                                )
                          else
                            Text(
                              '${answers[keys]}',
                              style: TextStyle(
                                fontSize: AppSize.height * 0.02,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppSize.height * 0.05,
                  ),
                  //back and next buttons
                  Row(
                    children: [
                      Expanded(
                        child: CustomWideButton(
                          title: 'Navigation.Back'.tr(),
                          onTap: () {
                            stepper.prevStep();
                          },
                        ),
                      ),
                      SizedBox(
                        width: AppSize.width * 0.05,
                      ),
                      Expanded(
                        child: CustomWideButton(
                          title: 'Apply'.tr(),
                          onTap: () {
                            ///TODO: Post Request
                            ref.read(applyLoanRequestProvider.notifier)
                                .applyLoanRequest(
                                  userId: userData!.id,
                                  loanId: loanData.id!,
                                  steps: answers,
                                  images: images,
                                );
                            stepper.nextStep();
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: AppSize.height * 0.2,
                    color: AppColor.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
