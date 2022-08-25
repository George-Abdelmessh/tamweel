import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tamweel/models/auth/app_user_model.dart';
import 'package:tamweel/models/user/user_details.dart';
import 'package:tamweel/shared/network/remote/api_repo/api_repo.dart';
import 'package:tuple/tuple.dart';

///Auth Notifier that allows UI to login, logout, and access user tokens.
class AuthNotifier extends StateNotifier<AppUser> {
  AuthNotifier() : super(const AppUser(userState: AuthState.guest));

  /// Login the user with the given email and password.
  Future<Tuple2<bool, String>> login(
    String email,
    String password, {
    bool? showAllert,
  }) async {
    //TODO: Login the user using Auth repository.
    try {
      // await Future.delayed(const Duration(seconds: 1));
      // print('User logged in with email: $email and password: $password');
      final response = await ApiRepo.login(
        email: email,
        password: password,
        showAllert: showAllert,
      );

      if (response.item1) {
        state = const AppUser(
          //TODO: Update user.
          userState: AuthState.loggedIn,
          accessToken: 'accessToken',
          refreshToken: 'refreshToken',
          userId: 'userId',
        );
      } else {
        state = const AppUser(userState: AuthState.guest);
      }
      return response;
    } catch (e) {
      state = const AppUser(userState: AuthState.guest);
      return const Tuple2(false, 'Wrong email or password');
    }
  }

  /// Logout the user.
  /// Clears all tokens and sets the user state to guest.
  /// also clears shared preferences.
  Future<void> logout() async {
    try {
      //TODO: Log out the user using Auth repository.
      await Future.delayed(const Duration(seconds: 1));
      state = const AppUser(userState: AuthState.guest);
    } catch (e) {
      // print(e);
    }
  }

  /// The user is set to guest
  void guest() {
    state = const AppUser(userState: AuthState.guest);
  }

  /// Get the details of the currently logged in user.
  Future<UserDetails> getUserDetails() async {
    // return ApiRepo.getUserDetails(1);
    return ApiRepo.getUserDetails(int.parse(state.userId!));
  }
}

/// Provider that provides the AuthNotifier.
/// This is used to notify the UI of the user's authentication state.
final authNotifierProvider = StateNotifierProvider<AuthNotifier, AppUser>(
  (ref) => AuthNotifier(),
);
