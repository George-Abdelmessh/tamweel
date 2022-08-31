import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';

class FormWidgets extends ConsumerWidget {
  const FormWidgets({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //watch only the step

    final step = ref.watch(
      applyStateProvider.select((applyState) => applyState.currentStep),
    );
    final map = ref.watch(
      applyStateProvider.select((applyState) => applyState.steps[step]),
    );

    // returns a list of widgets that represent the [map] of the current [step]
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 700),
      child: Container(
        key: ValueKey(step),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: map.length,
          itemBuilder: (context, index) {
            //TODO: return items = genereate widgets of [map] method
            return SizedBox(
              width: AppSize.width,
              height: Random().nextDouble() * 200 + 25,
              child: Center(child: Text(index.toString())),
            );
          },
        ),
      ),
    );
  }
}

final formWidgetsProvider = Provider<FormWidgets>((ref) {
  return const FormWidgets();
});
