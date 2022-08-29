import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';

class QAStringNumber extends HookConsumerWidget {
  const QAStringNumber({
    super.key,
    this.title,
    this.hint,
    required this.step,
    required this.index,
  });

  final String? title;
  final String? hint;
  final int step;
  final int index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answerController = useTextEditingController();

    return Padding(
      padding: AppPadding.paddingH005,
      child: SizedBox(
        width: AppSize.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text with title as question
            if (title != null) Text(title!),
            SizedBox(
              height: AppSize.height * 0.01,
            ),
            customTextFormFieldWithValidator(
              context,
              hintText: hint,
              controller: answerController,
              onChanged: (value) {
                //TODO: Set Provider.Answers at [step] and [index] to the value
              },
              maxLines: 1,
              borderColor: AppColor.secondary,
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
