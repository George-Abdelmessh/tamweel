import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
    return AnimatedSwitcherTranslation.right(
      duration: const Duration(seconds: 1),
      child: Container(
        key: ValueKey(step),
        child: ListView.builder(
          shrinkWrap: true,
          physics: AppHelper.neverScroll,
          itemCount: map.length,
          itemBuilder: (context, index) {
            //TODO: return items = genereate widgets of [map] method
            // ignore: avoid_dynamic_calls
            return FormWidgetsSwitcher(index: index);
          },

          // return Container(
          //   color: Color.fromRGBO(
          //     Random().nextInt(100) + 150,
          //     Random().nextInt(100) + 150,
          //     Random().nextInt(100) + 150,
          //     1.0,
          //   ),
          //   width: AppSize.width,
          //   height: Random().nextDouble() * 200 + 25,
          //   child: Center(child: Text(index.toString())),
          // );
        ),
      ),
    );
  }
}
