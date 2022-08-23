import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/auth/city.dart';
import 'package:tamweel/models/auth/gov.dart';
import 'package:tamweel/shared/custom_widgets/custom_hud.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';
import 'package:tuple/tuple.dart';

enum MaritalStatus {
  single,
  married,
  divorced,
  widowed,
}

///Auth Notifier that allows UI to login, logout, and access user tokens.
class SignUpFormNotifier extends StateNotifier<int> {
  SignUpFormNotifier(this.ref) : super(0);

  final ref;
  //state getter
  int get step => state;

  late final String _govs;
  late final String _cities;
  late final List<Gov> govsList;
  late final List<City> _citiesList;
  late final Map<String, List<City>> citiesMap;

  ///Called in Login Options Screen when user presses on signup button
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
          json.decode(_govs).map((x) => Gov.fromJson(x)),
        );
        _citiesList = List<City>.from(
          //ignore: argument_type_not_assignable , avoid_dynamic_calls
          json.decode(_cities).map((x) => City.fromJson(x)),
        );
      });
    });

    //Create a Map of govs and cities where each key is the gov id and the value is the list of cities in that gov
    citiesMap = {};
    for (final city in _citiesList) {
      if (citiesMap.containsKey(city.governorateId)) {
        citiesMap[city.governorateId]!.add(city);
      } else {
        citiesMap[city.governorateId] = [city];
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
    const country = 1;
    const city = 1;

    return ApiRepo.signup(
      email: email,
      password: password,
      name: name,
      nationalId: nationalId,
      phone: phone,
      address: address,
      country: country,
      city: city,
      maritalStatus: maritalStatus,
      gender: gender,
    );
  }
}

/// Provider that provides the AuthNotifier.
/// This is used to notify the UI of the user's authentication state.
final signupFormNotifierProvider =
    StateNotifierProvider.autoDispose<SignUpFormNotifier, int>(
  (ref) => SignUpFormNotifier(ref),
);
