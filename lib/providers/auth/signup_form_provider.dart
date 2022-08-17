import 'package:hooks_riverpod/hooks_riverpod.dart';

enum MaritalStatus { single, married, divorced, widowed }

///Auth Notifier that allows UI to login, logout, and access user tokens.
class SignUpFormNotifier extends StateNotifier<int> {
  SignUpFormNotifier() : super(0);

  //state getter
  int get step => state;

  ///Next Step method
  void nextStep() {
    if (state == 0) state++;
  }

  ///Previous Step method
  void previousStep() {
    if (state == 1) state--;
  }

  ///Sign Up method, Takes 9 strings, a boolean, and a MaritalStatus.
  Future<void> signUp({
    required String email,
    required String password,
    required String confirmPassword,
    required String name,
    required String phone,
    required String address,
    required String personalId,
    required String governorate,
    required String city,
    required bool isMale,
    required MaritalStatus userMaritalStatus,
  }) async {
    //Todo: Sign Up the user using Auth repository.
    await Future.delayed(const Duration(seconds: 2));
    print('User signed up with email: $email and password: $password');
    print('User signed up with name: $name and phone: $phone');
    print('User signed up with address: $address and personalId: $personalId');
    print('User signed up with governorate: $governorate and city: $city');
    print(
      'User signed up with isMale: $isMale and userMaritalStatus: $userMaritalStatus',
    );
  }
}

/// Provider that provides the AuthNotifier.
/// This is used to notify the UI of the user's authentication state.
final signupFormNotifierProvider =
    StateNotifierProvider<SignUpFormNotifier, int>(
  (ref) => SignUpFormNotifier(),
);
