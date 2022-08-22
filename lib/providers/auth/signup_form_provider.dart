import 'package:hooks_riverpod/hooks_riverpod.dart';
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
  SignUpFormNotifier() : super(0);

  //state getter
  int get step => state;

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
  (ref) => SignUpFormNotifier(),
);
