// ignore_for_file: use_late_for_private_fields_and_variables

import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/auth/city.dart';
import 'package:tamweel/models/auth/gov.dart';
import 'package:tamweel/providers/hud/hud_provider.dart';

/// the Marital Status of the user
enum EditMaritalStatus {
  married,
  divorced,
  widowed,
  single,
}

class EditProfileNotifier extends StateNotifier<int> {
  EditProfileNotifier(this.ref) : super(0);

  final Ref ref;
  int get step => state;
  String? _govs;
  String? _cities;
  List<Gov>? govsList;
  List<City>? _citiesList;
  Map<String, List<City>>? citiesMap;

  Future<void> loadData(BuildContext context) async {
    ref.read(isLoadingProvider.notifier).show();

    await DefaultAssetBundle.of(context)
        .loadString('assets/data/govs.json')
        .then((value) async {
      _govs = value;
      await DefaultAssetBundle.of(context)
          .loadString('assets/data/cities.json')
          .then((value) {
        _cities = value;
        govsList = List<Gov>.from(
          //ignore: argument_type_not_assignable , avoid_dynamic_calls
          json.decode(_govs!).map((x) => Gov.fromJson(x)),
        );
        _citiesList = List<City>.from(
          //ignore: argument_type_not_assignable , avoid_dynamic_calls
          json.decode(_cities!).map((x) => City.fromJson(x)),
        );
      });
    });

    //Create a Map of govs and cities where each key is the gov id and the value is the list of cities in that gov
    citiesMap = {};
    for (final city in _citiesList!) {
      if (citiesMap!.containsKey(city.governorateId)) {
        citiesMap![city.governorateId]!.add(city);
      } else {
        citiesMap![city.governorateId] = [city];
      }
    }
    ref.read(isLoadingProvider.notifier).hide();
  }
}

final editProfileNotifierProvider =
    StateNotifierProvider<EditProfileNotifier, int>(
  (ref) => EditProfileNotifier(ref),
);

/// Provides user selected governorate in signup process
final governorateProvider =
    StateProvider.autoDispose((ref) => 'Auth.Governorate'.tr());

/// Provides user selected City in signup process
final cityProvider = StateProvider.autoDispose((ref) => 'Auth.City'.tr());

/// Provides the gov id that the user selected city belongs to
final govIdProvider = StateProvider<String>((ref) {
  return '0';
});

/// Provides whether the phone has the ability to vibrate or not.
final canvibrateProvider = StateProvider((ref) => false);

/// Provides whether the phone has the ability to control vibrattion or not.
final hasVibrationController = StateProvider((ref) => false);
