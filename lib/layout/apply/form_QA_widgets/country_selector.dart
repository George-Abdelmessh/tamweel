import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/layout/apply/form_QA_widgets/bank_selector.dart';
import 'package:tamweel/main.dart';
import 'package:tamweel/providers/apply/apply_provider.dart';
import 'package:tamweel/shared/style/app_color.dart';

Future<List<dynamic>> loadJsonData() async {
  //open the json file
  final govString = await DefaultAssetBundle.of(navigatorKey.currentContext!)
      .loadString('assets/data/govs.json');
  final govJson = jsonDecode(govString);
  final citiesString = await DefaultAssetBundle.of(navigatorKey.currentContext!)
      .loadString('assets/data/cities.json');
  final citiesJson = jsonDecode(citiesString);

  //create a list of govs where each gov has a list of cities that are under it
  final govs = [];
  for (final gov in govJson) {
    final govCities = [];
    for (final city in citiesJson) {
      if (city['governorate_id'] == gov['id']) {
        govCities.add(city['city_name_ar']);
      }
    }
    govs.add({
      gov['governorate_name_ar']: govCities,
    });
  }
  print(govs);
  return govs;
}

final jsonDataProvider = FutureProvider<List<dynamic>>((ref) async {
  return loadJsonData();
});

class QACountrySelector extends HookConsumerWidget {
  const QACountrySelector({
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
    final jsonLoader = ref.watch(jsonDataProvider);
    return jsonLoader.when(
      data: (data) => QABankSelector(
        title: null,
        step: step,
        formType: FormType.address,
        options: data,
      ),
      error: (error, stack) => Text('Error: $error'),
      loading: () => const Center(
        child: CircularProgressIndicator(
          color: AppColor.secondary,
        ),
      ),
    );
  }
}
