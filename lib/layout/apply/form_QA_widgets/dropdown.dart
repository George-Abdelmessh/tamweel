import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class QADropDown extends ConsumerStatefulWidget {
  const QADropDown({
    super.key,
    required this.title,
    required this.step,
    required this.formType,
    required this.options,
  });

  final String title;
  final int step;
  final FormType formType;
  final List<dynamic> options;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QADropDownState();
}

class _QADropDownState extends ConsumerState<QADropDown> {
  String selectedOption = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedOption = widget.options[0] as String;
  }

  @override
  Widget build(BuildContext context) {
    final String title = widget.title;
    final int step = widget.step;
    final FormType formType = widget.formType;
    final List<dynamic> options = widget.options;

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
            //Drop down menu with the given options
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                dropdownDecoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.secondary,
                    width: 2,
                  ),
                  borderRadius: AppRadius.radius20,
                ),
                scrollbarRadius: Radius.circular(AppSize.width * 0.05),
                scrollbarThickness: AppSize.width * 0.015,
                icon: const Icon(Icons.arrow_drop_down_rounded),
                iconOnClick: const Icon(Icons.arrow_drop_up_rounded),
                iconSize: AppSize.width * 0.075,
                selectedItemHighlightColor:
                    AppColor.secondary.withOpacity(0.75),
                isExpanded: true,
                dropdownFullScreen: true,
                dropdownMaxHeight: AppSize.height * 0.3,
                scrollbarAlwaysShow: true,
                value: selectedOption,
                items: [
                  ...options
                      .map(
                        (e) => DropdownMenuItem(
                          value: e as String,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  // govs.map((e) => DropdownMenuItem(child: child)).toList() as List<DropdownMenuItem<String>?>,
                  //map govs to dropdown menu items
                ],
                onChanged: (value) {
                  // ignore: cast_nullable_to_non_nullable
                  final answer = value as String;
                  setState(
                    () {
                      selectedOption = answer;
                      applyState.setAnswer(step, title, answer);
                    },
                  );
                },
              ),
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
