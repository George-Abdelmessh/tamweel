import 'package:easy_localization/easy_localization.dart';

class AppValidators {
  static String? email(String? email) {
    if (email == null) {
      return 'Validators.EmailRequired'.tr();
    }
    if (!email.contains('@')) {
      return 'Validators.EmailPattern'.tr();
    }
    //make sure there are strings before and after the @
    final split = email.split('@');
    if (split.length != 2 || split.contains('')) {
      return 'Validators.EmailPattern'.tr();
    }
    return null;
  }

  static String? password(String? password) {
    if (password == null) {
      return 'Validators.PasswordRequired'.tr();
    }
    if (password.length < 8) {
      return 'Validators.PasswordMinLength'.tr();
    }
    //contains at least one number, one uppercase letter, and one special character

    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'Validators.PasswordContainNumber'.tr();
    }
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'Validators.PasswordContainUpperCase'.tr();
    }
    if (!password
        .contains(RegExp(r'[!@#$%^&*()_+\-=\[\]{};:"|,.<>\/?' "'" ']'))) {
      return 'Validators.PasswordContainSpecialChar'.tr();
    }
    return null;
  }
}
