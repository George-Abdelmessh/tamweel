import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/auth/app_user_model.dart';

///Auth Notifier that allows UI to login, logout, and access user tokens.
class AuthNotifier extends StateNotifier<AppUser> {
  AuthNotifier() : super(AppUser(userState: authState.guest));

  /// Login the user with the given email and password.
  Future<void> login(String email, String password) async {
    //TODO: Login the user using Auth repository.
    try {
      await Future.delayed(Duration(seconds: 1));
      print('User logged in with email: $email and password: $password');
      state = state.copyWith(
        userState: authState.loggedIn,
        accessToken: 'accessToken',
        refreshToken: 'refreshToken',
        userId: 'userId',
      );
    } catch (e) {
      state = AppUser(userState: authState.guest);
    }
  }

  /// Logout the user.
  /// Clears all tokens and sets the user state to guest.
  void logout() async {
    try {
      await Future.delayed(Duration(seconds: 1));
      state = AppUser(userState: authState.guest);
    } catch (e) {}
  }
}

/// Provider that provides the AuthNotifier.
/// This is used to notify the UI of the user's authentication state.
final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AppUser>((ref) => AuthNotifier());
