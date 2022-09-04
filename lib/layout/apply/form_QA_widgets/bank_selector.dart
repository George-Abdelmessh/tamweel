import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class QABankSelector extends ConsumerStatefulWidget {
  const QABankSelector({
    super.key,
    required this.title,
    required this.step,
    required this.formType,
    required this.options,
  });

  final String? title;
  final int step;
  final FormType formType;
  final List<dynamic> options;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QADropDownState();
}

class _QADropDownState extends ConsumerState<QABankSelector> {
  String selectedOption = '';
  String selectedOption2 = '';
  List options1 = [];
  List options2 = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final gov = widget.options[0] as dynamic;
    // set selected option to the key of the first map in the list
    // ignore: avoid_dynamic_calls
    selectedOption = gov.keys.first as String;
    // set selected option 2 to the first value of the first map in the list
    // ignore: avoid_dynamic_calls
    selectedOption2 = gov[selectedOption][0] as String;

    // ignore: avoid_dynamic_calls
    options1 = widget.options.map((e) => e.keys.first).toList();
    options2 = gov[selectedOption] as List<dynamic>;
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((timeStamp) {
      final Map answerMap = {
        'المحافظة': selectedOption,
        'فرع البنك': selectedOption2,
      };
      ref
          .read(applyStateProvider.notifier)
          .setAnswer(widget.step, widget.title ?? '', answerMap);
    });
  }

  @override
  Widget build(BuildContext context) {
    final String? title = widget.title;
    final int step = widget.step;
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
            if (title != null) Text(title),
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
                  ...options1
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
                      // ignore: avoid_dynamic_calls
                      selectedOption2 = options
                          // ignore: avoid_dynamic_calls
                          .firstWhere((element) => element.keys.first == answer)
                          .values
                          .first[0] as String;
                      // ignore: avoid_dynamic_calls
                      options2 = options
                          // ignore: avoid_dynamic_calls
                          .firstWhere((element) => element.keys.first == answer)
                          .values
                          .first as List<dynamic>;
                      final Map answerMap = {
                        'المحافظة': answer,
                        'فرع البنك': selectedOption2,
                      };
                      applyState.setAnswer(step, title ?? '', answerMap);
                      // print(answerMap);
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: AppSize.height * 0.01,
            ),
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
                value: selectedOption2,
                items: [
                  ...options2
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
                  final Map answerMap = {
                    'المحافظة': selectedOption,
                    'فرع البنك': answer,
                  };
                  setState(
                    () {
                      selectedOption2 = answer;
                      applyState.setAnswer(step, title ?? '', answerMap);
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
