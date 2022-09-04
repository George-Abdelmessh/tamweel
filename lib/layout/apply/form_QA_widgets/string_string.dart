import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/custom_widgets/custom_text_form_with_validator.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/validators/app_validators.dart';

class QAStringStringOneLine extends HookConsumerWidget {
  const QAStringStringOneLine({
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
            Text(title),
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
              maxLines: validationType == FormType.description ? 7 : 1,
              padding: AppPadding.paddingH005,
              borderColor: AppColor.secondary,
              keyboardType: validationType == FormType.email
                  ? TextInputType.emailAddress
                  : validationType == FormType.password
                      ? TextInputType.visiblePassword
                      : TextInputType.text,
              validator: validationType == null
                  ? null
                  : validationType == FormType.name ||
                          validationType == FormType.address
                      ? (value) => AppValidators.required(value)
                      : validationType == FormType.email
                          ? (value) => AppValidators.email(value)
                          : validationType == FormType.password
                              ? (value) => AppValidators.password(value)
                              : (value) => AppValidators.required(value),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              isObscureText: validationType == FormType.password,
              prefixWidget: validationType == FormType.name
                  ? const Icon(
                      Icons.person_outline_rounded,
                      color: AppColor.secondary,
                    )
                  : validationType == FormType.adress
                      ? const Icon(
                          Icons.location_on_outlined,
                          color: AppColor.secondary,
                        )
                      : validationType == FormType.password
                          ? const Icon(
                              Icons.lock_outline_rounded,
                              color: AppColor.secondary,
                            )
                          : validationType == FormType.email
                              ? const Icon(
                                  Icons.email_outlined,
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
