// ignore_for_file: invalid_use_of_protected_member, avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/string_numer.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/string_string.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_radius.dart';

final groupButtonProvider = StateProvider<Map<int, Map<String, int>>>((ref) {
  return {};
});

class QAGroupButton extends ConsumerStatefulWidget {
  const QAGroupButton({
    super.key,
    required this.data,
    required this.title,
  });

  final Map data;
  final String title;

  @override
  ConsumerState<QAGroupButton> createState() => _QAGroupButtonState();
}

class _QAGroupButtonState extends ConsumerState<QAGroupButton> {
  final GroupButtonController _controller = GroupButtonController();
  int? stepProvider;

  @override
  void initState() {
    super.initState();
    stepProvider = ref.read(applyStateProvider.notifier).state.currentStep;
    if (ref.read(groupButtonProvider)[stepProvider] != null) {
      _controller.selectIndex(
        ref.read(groupButtonProvider)[stepProvider]![widget.title] ?? 0,
      );
    }
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      ref.read(groupButtonProvider.notifier).state[stepProvider!] = {
        widget.title: 0
      };
    });
    ref.read(requiredWidgetsProvider.notifier).setRequiredWidgets(
          Container(),
        );
  }

  @override
  Widget build(BuildContext context) {
    final groupButtonData = ref.watch(groupButtonProvider.notifier);
    stepProvider =
        ref.watch(applyStateProvider.select((value) => value.currentStep));
    final requiredWidgets = ref.watch(requiredWidgetsProvider.notifier);
    final apply = ref.watch(applyStateProvider.notifier);
    return Column(
      crossAxisAlignment: (widget.data['options'].length) == 2
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          widget.data['title'].toString(),
          style: TextStyle(
            fontSize: AppSize.width * 0.043,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: AppSize.height * 0.015,
        ),
        GroupButton(
          controller: _controller,
          onSelected: (object, index, isSelected) {
            setState(() {
              groupButtonData.state[stepProvider!] = {widget.title: index};
            });
            apply.setAnswer(
              stepProvider!,
              widget.title,
              widget.data['options'][index],
            );
            if (widget.data['childEnable'] ==
                ref.watch(groupButtonProvider.notifier)
                    .state[stepProvider]![widget.title]) {
              if(widget.data['child']['type'] as int == 5 &&
                  widget.data['childEnable'] !=
                      ref.watch(groupButtonProvider.notifier)
                          .state[stepProvider]![widget.title]) {
                /// ToDo unComment to insert address auto
                // apply.setAnswer(
                //   stepProvider!,
                //   widget.title,
                //   ref.watch(userDetailsProvider)!.address,
                // );
              } else {
                switch (widget.data['child']['type'] as int) {
                case 0:
                  ref.read(requiredWidgetsProvider.notifier).setRequiredWidgets(
                        QAStringStringOneLine(
                          step: stepProvider!,
                          title: widget.data['child']['title'].toString(),
                          hint: widget.data['child']['title'].toString(),
                          validationType: FormType.name,
                        ),
                      );
                  break;
                case 5:
                  ref.read(requiredWidgetsProvider.notifier).setRequiredWidgets(
                      QAStringStringOneLine(
                        step: stepProvider!,
                        title: widget.data['child']['title'].toString(),
                        hint: widget.data['child']['title'].toString(),
                        validationType: FormType.address,
                      ),
                  );
                  break;
                case 9: case 10:
                  ref.read(requiredWidgetsProvider.notifier).setRequiredWidgets(
                        QAStringNumber(
                          step: stepProvider!,
                          title: widget.data['child']['title'].toString(),
                          hint: widget.data['child']['title'].toString(),
                          validationType: FormType.number,
                        ),
                      );
                  break;
              }
              }
            }
            return null;
          },
          buttons: widget.data['options'] as List<Object?>,
          buttonBuilder: (selected, value, context) {
            return Container(
              width: AppSize.width * 0.2,
              height: AppSize.height * 0.04,
              decoration: BoxDecoration(
                borderRadius: AppRadius.radius20,
                color: selected ? AppColor.secondary : AppColor.grey,
              ),
              child: Center(
                child: FittedBox(
                  child: Text(
                    value.toString(),
                    style: TextStyle(
                      color: selected ? AppColor.white : AppColor.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        SizedBox(
          height: AppSize.height * 0.02,
        ),
        if (ref.watch(groupButtonProvider.notifier).state[stepProvider] !=
                null &&
            widget.data['childEnable'] ==
                ref
                    .watch(groupButtonProvider.notifier)
                    .state[stepProvider]![widget.title])
          requiredWidgets.widget
        else
          Container(),
        SizedBox(
          height: AppSize.height * 0.02,
        ),
      ],
    );
  }
}

class RequiredWidgets extends StateNotifier<Widget> {
  RequiredWidgets() : super(Container());

  Widget widget = Container();

  void setRequiredWidgets(Widget value) {
    widget = value;
    return;
  }
}

final requiredWidgetsProvider =
    StateNotifierProvider.autoDispose<RequiredWidgets, Widget>(
  (ref) => RequiredWidgets(),
);
