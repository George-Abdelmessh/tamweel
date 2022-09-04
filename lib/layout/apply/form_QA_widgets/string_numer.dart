import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/validators/app_validators.dart';

class QAStringNumber extends HookConsumerWidget {
  const QAStringNumber({
    super.key,
    required this.title,
    required this.step,
    this.hint,
    this.validationType,
  });

  final String title;
  final int step;
  final String? hint;
  final FormType? validationType;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final answerController = useTextEditingController();
    final applyState = ref.watch(applyStateProvider.notifier);
    return Padding(
      padding: AppPadding.paddingH005,
      child: SizedBox(
        width: AppSize.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text with title as question
            if (title != null) Text(title),
            SizedBox(
              height: AppSize.height * 0.01,
            ),
            customTextFormFieldWithValidator(
              context,
              hintText: hint,
              // controller: answerController,
              onChanged: (answer) {
                //update answers map on text change
                applyState.setAnswer(step, title, answer);
              },
              maxLines: 1,
              borderColor: AppColor.secondary,
              padding: AppPadding.paddingH005,
              keyboardType: validationType == FormType.phone
                  ? TextInputType.phone
                  : TextInputType.number,
              validator: validationType == null
                  ? null
                  : validationType == FormType.phone
                      ? (value) => AppValidators.phoneNumber(value)
                      : validationType == FormType.nationalId
                          ? (value) =>
                              AppValidators.numbersExactLength(value, 14)
                          : (value) => AppValidators.required(value),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              prefixWidget: validationType == FormType.phone
                  ? const Icon(
                      Icons.phone_rounded,
                      color: AppColor.secondary,
                    )
                  : validationType == FormType.nationalId
                      ? const Icon(
                          Icons.credit_card_rounded,
                          color: AppColor.secondary,
                        )
                      : null,
            ),
            SizedBox(
              height: AppSize.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
