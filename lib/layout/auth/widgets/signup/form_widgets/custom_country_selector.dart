import 'dart:core';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/providers/auth/signup_form_provider.dart';
import 'package:tamweel/shared/constants/app_constants.dart';

class CustomCountrySelector extends ConsumerWidget {
  const CustomCountrySelector({
    super.key,
    required this.offsetAnimationCity,
    required this.offsetAnimationGov,
  });

  final Animation<Offset> offsetAnimationGov;
  final Animation<Offset> offsetAnimationCity;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideTransition(
          position: offsetAnimationGov,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              value: ref.watch(governorateProvider),
              items: [
                DropdownMenuItem(
                  value: 'Auth.Governorate'.tr(),
                  child: Text('Auth.Governorate'.tr()),
                ),
                const DropdownMenuItem(
                  value: 'القاهرة',
                  child: Text('القاهرة'),
                ),
                DropdownMenuItem(
                  value: 'الجيزة' * 10,
                  child: FittedBox(
                    child: Text(
                      'الجيزة' * 10,
                    ),
                  ),
                ),
              ],
              onChanged: (value) {
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
              isExpanded: true,
              value: ref.watch(cityProvider),
              items: [
                DropdownMenuItem(
                  value: 'Auth.City'.tr(),
                  child: Text('Auth.City'.tr()),
                ),
                const DropdownMenuItem(
                  value: 'القاهرة الجديدة',
                  child: Text('القاهرة الجديدة'),
                ),
                DropdownMenuItem(
                  value: 'اكتوبر' * 10,
                  child: FittedBox(
                    child: Text(
                      'اكتوبر' * 10,
                    ),
                  ),
                ),
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
