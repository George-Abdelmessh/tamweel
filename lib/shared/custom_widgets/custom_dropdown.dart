// ignore_for_file: must_be_immutable, avoid_dynamic_calls

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/category/filter_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

// ignore: non_constant_identifier_names
final categoryProvider = StateProvider<String?>((ref) => 'الكل');
final catIndexProvider = StateProvider<int>((ref) => -1);

class CustomDropDownButton extends ConsumerWidget {
  const CustomDropDownButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loanProvider = ref.watch(filterFutureProvider);
    final selectedValue = ref.watch(categoryProvider);
    List dataWhen = [];
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Row(
          children: [
            const Icon(Icons.list, color: AppColor.primary),
            SizedBox(
              width: AppSize.width * 0.01,
            ),
            const Expanded(
              child: Text(
                'برامج التمويل',
                style: TextStyle(
                  color: AppColor.primary,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: loanProvider.when(
          data: (data) {
            final items = data.map((e) => e.name);
            dataWhen = data;
            final widgets = [
              const DropdownMenuItem<String>(
                value: 'الكل',
                child: FittedBox(
                  child: Text(
                    'كل برامج التمويل',
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.primary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ];
            widgets.addAll(
              items.map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: FittedBox(
                    child: Text(
                      item!,
                      style: const TextStyle(
                        fontSize: 20,
                        color: AppColor.primary,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            );

            return widgets;
          },
          error: (_, __) => [const DropdownMenuItem(child: Text(''))],
          loading: () => [const DropdownMenuItem(child: Text(''))],
        ),
        value: selectedValue,
        onChanged: (value) {
          if (value == 'الكل') {
            ref.read(categoryProvider.state).state = value;
            ref.read(catIndexProvider.state).state = -1;
            return;
          }
          ref.read(categoryProvider.state).state = value;
          ref.read(catIndexProvider.state).state =
              dataWhen.indexWhere((element) => element.name == value);
        },
        icon: const Icon(
          Icons.keyboard_arrow_left_outlined,
          size: 18,
        ),
        iconOnClick: const Icon(Icons.keyboard_arrow_down_outlined, size: 18),
        iconEnabledColor: AppColor.primary,
        buttonHeight: AppSize.height * 0.07,
        buttonWidth: AppSize.width * 0.39,
        buttonPadding: const EdgeInsets.only(left: 15, right: 15),
        itemHeight: AppSize.height * 0.07,
        itemPadding: const EdgeInsets.only(left: 15, right: 15),
        dropdownWidth: AppSize.width * 0.4,
        dropdownPadding: AppPadding.paddingH10,
        dropdownDecoration: BoxDecoration(
          borderRadius: AppRadius.radius10,
        ),
      ),
    );
  }
}
