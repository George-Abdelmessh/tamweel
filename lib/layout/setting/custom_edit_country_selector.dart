import 'dart:core';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/edit_profile/edit_country_selector_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_radius.dart';

class CustomEditCountrySelector extends ConsumerWidget {
  const CustomEditCountrySelector({
    super.key,
    required this.offsetAnimationCity,
    required this.offsetAnimationGov,
  });

  final Animation<Offset> offsetAnimationGov;
  final Animation<Offset> offsetAnimationCity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final govs = ref.read(editProfileNotifierProvider.notifier).govsList;
    final cities = ref.read(editProfileNotifierProvider.notifier).citiesMap;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideTransition(
          position: offsetAnimationGov,
          child: DropdownButtonHideUnderline(
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
              selectedItemHighlightColor: AppColor.secondary.withOpacity(0.75),
              isExpanded: true,
              dropdownFullScreen: true,
              dropdownMaxHeight: AppSize.height * 0.4,
              scrollbarAlwaysShow: true,
              value: ref.watch(governorateProvider),
              items: [
                DropdownMenuItem(
                  value: 'Auth.Governorate'.tr(),
                  child: Text('Auth.Governorate'.tr()),
                ),
                // govs.map((e) => DropdownMenuItem(child: child)).toList() as List<DropdownMenuItem<String>?>,
                //map govs to dropdown menu items
                if (EasyLocalization.of(context)!.currentLocale!.languageCode ==
                    'ar')
                  ...govs!
                      .map(
                        (e) => DropdownMenuItem(
                      value: e.governorateNameAr,
                      child: Text(e.governorateNameAr),
                    ),
                  )
                      .toList()
                else
                  ...govs!.map(
                        (e) => DropdownMenuItem(
                      value: e.governorateNameEn,
                      child: Text(e.governorateNameEn),
                    ),
                  ),
              ],
              onChanged: (value) {
                ref.read(cityProvider.notifier).state = 'Auth.City'.tr();
                try {
                  ref.read(govIdProvider.notifier).state = govs
                      .firstWhere(
                        (e) =>
                    e.governorateNameEn == value ||
                        e.governorateNameAr == value,
                  )
                      .id;
                } catch (e) {
                  ref.read(govIdProvider.notifier).state = '0';
                }

                ref.read(governorateProvider.notifier).state =
                    value!.toString();
              },
            ),
          ),
        ),
        SizedBox(height: AppSize.height * 0.02),
        SlideTransition(
          position: offsetAnimationCity,
          child: DropdownButtonHideUnderline(
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
              selectedItemHighlightColor: AppColor.secondary.withOpacity(0.75),
              isExpanded: true,
              dropdownFullScreen: true,
              dropdownMaxHeight: AppSize.height * 0.4,
              scrollbarAlwaysShow: true,
              value: ref.watch(cityProvider),
              items: [
                DropdownMenuItem(
                  value: 'Auth.City'.tr(),
                  child: Text('Auth.City'.tr()),
                ),
                if (ref.read(govIdProvider.notifier).state != '0')
                //map cities map to  drop down menu items according to the selected governorate id
                  if (EasyLocalization.of(context)!
                      .currentLocale!
                      .languageCode ==
                      'ar')
                    ...cities![ref.watch(govIdProvider)]!
                        .map(
                          (e) => DropdownMenuItem(
                        value: e.cityNameAr,
                        child: Text(e.cityNameAr),
                      ),
                    )
                        .toList()
                  else
                    ...cities![ref.watch(govIdProvider)]!
                        .map(
                          (e) => DropdownMenuItem(
                        value: e.cityNameEn,
                        child: Text(e.cityNameEn),
                      ),
                    )
                        .toList(),
              ],
              onChanged: (value) {
                ref.read(cityProvider.notifier).state = value!.toString();
              },
            ),
          ),
        ),
      ],
    );
  }
}
