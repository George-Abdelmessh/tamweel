import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/apply/apply_screen.dart';
import 'package:tamweel/layout/apply/widgets/form_widgets_switcher.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/style/app_helper.dart';

class FormWidgets extends ConsumerWidget {
  const FormWidgets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //watch only the step

    final step = ref.watch(
      applyStateProvider.select((applyState) => applyState.currentStep),
    );
    final map = ref.watch(
      applyStateProvider
          // ignore: avoid_dynamic_calls
          .select((applyState) => applyState.steps[step!]['form']),
    ) as List;
    // returns a list of widgets that represent the [map] of the current [step]
    return Form(
      key: ref.watch(formKeyProvider),
      child: AnimatedSwitcherTranslation.right(
        duration: const Duration(seconds: 1),
        child: Container(
          key: ValueKey(step),
          child: ListView.builder(
            shrinkWrap: true,
            physics: AppHelper.neverScroll,
            itemCount: map.length + 1,
            itemBuilder: (context, index) {
              // ignore: avoid_dynamic_calls
              return FormWidgetsSwitcher(index: index,);
            },
          ),
        ),
      ),
    );
  }
}
