// ignore_for_file: must_be_immutable

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class CustomDropDownButton extends StatelessWidget {
  CustomDropDownButton({super.key});

  final List<String> items = [
    'كل برامج تمويل',
    'برامج تمويل المزارع',
    'برامج تمويل الشركات',
    'تمويل المشروعات الصغيرة',
    'تمويل الشباب',
    'برامج تمويل المرأة',
    'تمويل ذوي الهمم',
    'تمويل أفراد',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
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
                style: TextStyle(color: AppColor.primary,
                  ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        items: items
            .map(
              (item) => DropdownMenuItem<String>(
                value: item,
                child: FittedBox(
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColor.primary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            )
            .toList(),
        value: selectedValue,
        onChanged: (value) {},
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
