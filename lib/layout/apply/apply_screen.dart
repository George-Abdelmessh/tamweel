import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:im_stepper/stepper.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/providers/apply/form_widgets_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_floating_back_button.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/network/end_points.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class ApplyScreen extends ConsumerStatefulWidget {
  const ApplyScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ApplyScreenState();
}

class _ApplyScreenState extends ConsumerState<ApplyScreen> {
  @override
  Widget build(BuildContext context) {
    //providers
    final stepLoader = ref.watch(loadStepsProvider);
    final stepper = ref.watch(applyStateProvider.notifier);
    final state = ref.watch(applyStateProvider);
    final loanData = ref.watch(loanDataProvider);

    // print(loanData);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: const CustomFloatingBackButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: SingleChildScrollView(
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
                    children: [
                      if (state.steps.isNotEmpty)
                        AutoSizeText(
                          // ignore: avoid_dynamic_calls
                          state.steps[state.currentStep!]['title'] as String? ??
                              '',
                          style: TextStyle(
                            fontSize: AppSize.height * 0.03,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primary,
                          ),
                          maxLines: 1,
                        ),
                      SizedBox(
                        width: AppSize.width * 0.01,
                      ),
                      NumberStepper(
                        activeStep: state.currentStep!,
                        enableNextPreviousButtons: false,
                        enableStepTapping: false,
                        activeStepColor: AppColor.secondary,
                        stepColor: AppColor.white,
                        numbers: [
                          for (var i = 1; i < state.steps.length + 1; i++) i
                        ],
                      ),
                      if (state.steps.isNotEmpty)
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: AutoSizeText(
                            // ignore: avoid_dynamic_calls
                            state.steps[state.currentStep!]['description']
                                    as String? ??
                                '',
                            textAlign: TextAlign.start,
                            maxLines: 3,
                          ),
                        ),
                      SizedBox(
                        height: AppSize.height * 0.05,
                      ),

                      stepLoader.when(
                        data: (data) {
                          // final formProvider = ref.watch(formWidgetsProvider);
                          return const FormWidgets();
                        },
                        error: (error, stackTrace) => const Text('قريبا'),
                        loading: () => const SizedBox.shrink(),
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
                              title: 'Navigation.Next'.tr(),
                              onTap: () {
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
