import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/auth/city.dart';
import 'package:tamweel/models/auth/gov.dart';
import 'package:tamweel/providers/hud/hud_provider.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';
import 'package:tuple/tuple.dart';

/// the Marital Status of the user
enum MaritalStatus {
  married,
  divorced,
  widowed,
  single,
}

/// Signup Notifier that allows UI to signup.
class SignUpFormNotifier extends StateNotifier<int> {
  SignUpFormNotifier(this.ref) : super(0);

  final ref;
  //state getter
  int get step => state;
  String? _govs;
  String? _cities;
  List<Gov>? govsList;
  List<City>? _citiesList;
  Map<String, List<City>>? citiesMap;

  ///Called to load data from local json files, used when going to third step.
  ///TODO: Test using this on main init
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

  ///Next Step method
  void nextStep() {
    if (state != 2) state++;
  }

  ///Previous Step method
  void previousStep() {
    if (state != 0) state--;
  }

  ///Sign Up method, Takes 9 strings, a boolean, and a MaritalStatus.
  Future<Tuple2<bool, String>> signUp({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String address,
    required String nationalId,
    required String governorate,
    required String city,
    required bool isMale,
    required MaritalStatus userMaritalStatus,
  }) async {
    final gender = isMale ? 1 : 2;
    final maritalStatus = userMaritalStatus.index + 1;
    //TODO: Use user selected values
    final country = govsList!
        .firstWhere(
          (element) =>
              element.governorateNameAr == governorate ||
              element.governorateNameEn == governorate,
        )
        .id;
    final userCity = citiesMap![country]!
        .firstWhere(
          (element) => element.cityNameAr == city || element.cityNameEn == city,
        )
        .id;

    return ApiRepo.signup(
      email: email,
      password: password,
      name: name,
      nationalId: nationalId,
      phone: phone,
      address: address,
      country: int.parse(country),
      city: int.parse(userCity),
      maritalStatus: maritalStatus,
      gender: gender,
    );
  }
}

/// Provider signup notifier
/// This is used to notify the UI of the user's signup step state.
final signupFormNotifierProvider =
    StateNotifierProvider.autoDispose<SignUpFormNotifier, int>(
  (ref) => SignUpFormNotifier(ref),
);

/// Provides whether the phone has the ability to vibrate or not.
final canvibrateProvider = StateProvider((ref) => false);

/// Provides whether the phone has the ability to control vibrattion or not.
final hasVibrationController = StateProvider((ref) => false);

/// Provides user gender in signup process
final genderProvider = StateProvider.autoDispose((ref) => 'Auth.Male'.tr());
// Provides user marital status in signup process
final maritalStatusProvider =
    StateProvider.autoDispose((ref) => MaritalStatus.married);

/// Provides user selected governorate in signup process
final governorateProvider =
    StateProvider.autoDispose((ref) => 'Auth.Governorate'.tr());

/// Provides user selected City in signup process
final cityProvider = StateProvider.autoDispose((ref) => 'Auth.City'.tr());

/// Provides the gov id that the user selected city belongs to
final govIdProvider = StateProvider<String>((ref) {
  return '0';
});
