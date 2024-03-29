// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/bank_selector.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/dropdown.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/group_button.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/group_button_with_tree.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/range_slider_button.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/string_numer.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/string_string.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/upload_image.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';

class FormWidgetsSwitcher extends ConsumerWidget {
  const FormWidgetsSwitcher({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final step = ref.watch(
      applyStateProvider.select((applyState) => applyState.currentStep),
    );
    final map = ref.watch(
      applyStateProvider
          .select((applyState) => applyState.steps[step!]['form']),
    ) as List;

    if (index >= map.length) return Container();

    final widget = map[index] as Map<String, dynamic>;
    switch (widget['type'] as int) {
      case 0:
        return QAStringStringOneLine(
          step: step!,
          title: widget['title'] as String,
          hint: widget['hint'] as String?,
          validationType: FormType.name,
        );
      case 1:
        return QAStringStringOneLine(
          step: step!,
          title: widget['title'] as String,
          hint: widget['hint'] as String?,
          validationType: FormType.email,
        );
      case 2:
        return QAStringNumber(
          step: step!,
          title: widget['title'] as String,
          hint: widget['hint'] as String?,
          validationType: FormType.phone,
        );
      case 3:
        return QAStringNumber(
          step: step!,
          title: widget['title'] as String,
          hint: widget['hint'] as String?,
          validationType: FormType.nationalId,
        );
      case 4:
        return QAStringStringOneLine(
          step: step!,
          title: widget['title'] as String,
          hint: widget['hint'] as String?,
          validationType: FormType.password,
        );
      case 5:
        return QAStringStringOneLine(
          step: step!,
          title: widget['title'] as String,
          hint: widget['hint'] as String?,
          validationType: FormType.address,
        );
      case 6:
        return Container();
      case 7:
        return Container();
      case 8:
        return Container();
      case 9:
        return QAStringStringOneLine(
          step: step!,
          title: widget['title'] as String,
          hint: widget['hint'] as String?,
          validationType: FormType.string,
        );
      case 10:
        return QAStringNumber(
          step: step!,
          title: widget['title'] as String,
          hint: widget['hint'] as String?,
          validationType: FormType.number,
        );
      case 11:
        return Container();
      case 12:
        return QAGroupButton(
          title: widget['title'] as String,
          data: widget,
        );
      case 13:
        return QADropDown(
          formType: FormType.dropDown,
          options: widget['options'] as List,
          step: step!,
          title: widget['title'] as String,
        );
      case 14:
        return Container();
      case 15:
        return Container();
      case 16:
        return QAStringStringOneLine(
          step: step!,
          title: widget['title'] as String,
          hint: widget['hint'] as String?,
          validationType: FormType.description,
        );
      case 17:
        return Container();
      case 18:
        return Container();
      case 19:
        return Container();
      case 20:
        return Container();
      case 21:
        return QARangeSliderButton(
          data: widget,
          step: step!,
          title: widget['title'] as String,
        );
      case 22:
        return QAUploadImage(
          title: widget['title'] as String,
        );
      case 23:
        return Container();
      case 24:
        return QABankSelector(
          formType: FormType.bankBranch,
          options: widget['options'] as List,
          step: step!,
          title: widget['title'] as String?,
        );
      case 25:
        return Container();
      case 26:
        return Container();
      case 27:
        return QAGroupButtonWithTree(
          title: widget['title'] as String,
          data: widget,
        );
      default:
        return Container();
    }
  }
}
