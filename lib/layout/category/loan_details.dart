import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tamweel/layout/apply/apply_screen.dart';
import 'package:tamweel/models/loan/loan_model.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/Hud/custom_spin_hud.dart';
import 'package:tamweel/shared/custom_widgets/custom_floating_back_button.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/navigation/app_navigator.dart';
import 'package:tamweel/shared/network/end_points.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class LoanDetailsScreen extends ConsumerWidget {
  const LoanDetailsScreen({super.key, required this.loandata});
  final LoanData loandata;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void apply() {
      ref.read(loanDataProvider.state).state = loandata;
      AppNavigator.push(
        context: context,
        screen: const ApplyScreen(),
        type: PageTransitionType.bottomToTop,
      );
    }

    return CustomSpinHudWidget(
      child: Scaffold(
        floatingActionButton: const CustomFloatingBackButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: AppPadding.paddingH005,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: AppSize.height * 0.03,
                      ),
                      Padding(
                        padding: AppPadding.padding20,
                        child: Center(
                          child: SizedBox(
                            width: AppSize.width * 0.4,
                            child: CachedNetworkImage(
                              imageUrl:
                                  '${AppEndPoints.baseUrl}/${loandata.image!}',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: AppSize.height * 0.025,
                      ),
                      Text(
                        loandata.title!,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        loandata.description!,
                      ),
                      const Divider(
                        thickness: 0,
                        color: AppColor.white,
                      ),
                      CustomWideButton(
                        title: loandata.buttonText!,
                        onTap: () => apply(),
                      ),
                      const Divider(
                        thickness: 0,
                        color: AppColor.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSize.height * 0.2,
                  child: ColoredBox(
                    color: AppColor.grey,
                    child: Padding(
                      padding: AppPadding.paddingH005,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                '  قيمه القرض تصل الى : ',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                loandata.cardReachTo!,
                                style: const TextStyle(
                                  color: AppColor.secondary,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'فتره سداد القرض : ',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                loandata.cardRepayment!,
                                style: const TextStyle(
                                  color: AppColor.primary,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'نسبة الفوايد : ',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                loandata.costBenefit!,
                                style: const TextStyle(
                                  color: AppColor.secondary,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'رسوم اجراءات : ',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                loandata.loanFee!,
                                style: const TextStyle(
                                  color: AppColor.primary,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: AppPadding.paddingH005 * 4.5,
                  child: Image.asset('assets/images/Screenshot (60).png'),
                ),
                SizedBox(
                  width: AppSize.width,
                  child: ColoredBox(
                    color: AppColor.grey,
                    child: Padding(
                      padding: AppPadding.paddingH005,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: AppSize.height * 0.02,
                          ),
                          const Text(
                            'الاشخاص المتاح حصولهم على القرض ',
                            style: TextStyle(
                              fontSize: 25,
                              color: AppColor.secondary,
                            ),
                          ),
                          FittedBox(
                            child: Text(
                              loandata.loanRequirement!,
                            ),
                          ),
                          SizedBox(
                            height: AppSize.height * 0.02,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppSize.height * 0.02,
                ),
                Padding(
                  padding: AppPadding.paddingH005,
                  child: CustomWideButton(
                    title: loandata.buttonText!,
                    onTap: () {
                      apply();
                    },
                  ),
                ),
                SizedBox(
                  height: AppSize.height * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
