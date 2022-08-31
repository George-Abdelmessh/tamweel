import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/providers/apply/form_widgets_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_floating_back_button.dart';
import 'package:tamweel/shared/custom_widgets/custom_wide_button.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_helper.dart';

class ApplyScreen extends ConsumerWidget {
  const ApplyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //providers
    final stepLoader = ref.watch(loadStepsProvider);
    final stepper = ref.watch(applyStateProvider.notifier);

    return SafeArea(
      child: Scaffold(
        floatingActionButton: const CustomFloatingBackButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: SingleChildScrollView(
          physics: AppHelper.scroll,
          child: SizedBox(
            width: AppSize.width,
            child: Column(
              children: [
                const Text('Apply'),
                stepLoader.when(
                  data: (data) {
                    final formProvider = ref.watch(formWidgetsProvider);
                    return formProvider;
                  },
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: AppColor.secondary,
                    ),
                  ),
                ),
                //back and next buttons
                CustomWideButton(
                  title: 'next',
                  onTap: () => stepper.nextStep(),
                ),
                CustomWideButton(
                  title: 'back',
                  onTap: () => stepper.prevStep(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
