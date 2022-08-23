import 'package:flutter/material.dart';

enum AuthState {
  guest,
  loggedIn,
}

@immutable
class AppUser {
  ///Immutable Constructor
  const AppUser({
    this.accessToken,
    this.refreshToken,
    this.userId,
    required this.userState,
  });

  /// The user's Access Token used for Requests.
  final String? accessToken;

  /// The user's Refresh Token used to get a new AccessToken.
  final String? refreshToken;

  /// The user's unique ID.
  final String? userId;

  /// The User's Authentication state
  final AuthState userState;

  /// Returns a copy of the current AppUser with the given values.
  AppUser copyWith({
    String? accessToken,
    String? refreshToken,
    String? userId,
    required AuthState userState,
  }) {
    return AppUser(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      userId: userId ?? this.userId,
      userState: this.userState,
    );
  }
}
