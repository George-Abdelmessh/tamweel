import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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
          .select((applyState) => applyState.steps[step!]['form']),
    ) as List;

    print(step);
    print(map);

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
            switch (map[index]['type']) {
              case 1:
                return Container();
              case 2:
                return Container();
              case 3:
                return Container();
              case 4:
                return Container();
              case 5:
                return Container();
              case 6:
                return Container();
              case 7:
                return Container();
              case 8:
                return Container();
              case 9:
                return Container();
              case 10:
                return Container();
              case 11:
                return Container();
              case 12:
                return Container();
              case 13:
                return Container();
              case 14:
                return Container();
              case 15:
                return Container();
              case 16:
                return Container();
              case 17:
                return Container();
              case 18:
                return Container();
              case 19:
                return Container();
              case 20:
                return Container();
              case 21:
                return Container();
              case 23:
                return Container();
              case 24:
                return Container();
              case 25:
                return Container();
              case 26:
                return Container();
              case 27:
                return Container();
              default:
                return Container();
            }

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
          },
        ),
      ),
    );
  }
}
