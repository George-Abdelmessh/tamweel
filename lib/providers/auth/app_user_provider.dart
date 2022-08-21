import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/auth/app_user_model.dart';

enum MaritalStatus { single, married, divorced, widowed }

///Auth Notifier that allows UI to login, logout, and access user tokens.
class AuthNotifier extends StateNotifier<AppUser> {
  AuthNotifier() : super(const AppUser(userState: AuthState.guest));

  /// Login the user with the given email and password.
  Future<bool> login(String email, String password) async {
    //TODO: Login the user using Auth repository.
    try {
      await Future.delayed(const Duration(seconds: 1));
      print('User logged in with email: $email and password: $password');
      state = state.copyWith(
        userState: AuthState.loggedIn,
        accessToken: 'accessToken',
        refreshToken: 'refreshToken',
        userId: 'userId',
      );
      return true;
    } catch (e) {
      state = const AppUser(userState: AuthState.guest);
      return false;
    }
  }

  /// Logout the user.
  /// Clears all tokens and sets the user state to guest.
  Future<void> logout() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      state = const AppUser(userState: AuthState.guest);
    } catch (e) {
      // print(e);
    }
  }
}

/// Provider that provides the AuthNotifier.
/// This is used to notify the UI of the user's authentication state.
final authNotifierProvider =
    StateNotifierProvider.autoDispose<AuthNotifier, AppUser>(
  (ref) => AuthNotifier(),
);
