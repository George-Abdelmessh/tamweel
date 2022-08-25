import 'package:shared_preferences/shared_preferences.dart';
import 'package:tamweel/providers/auth/app_user_provider.dart';
import 'package:tamweel/shared/network/remote/dio_helper.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;
  static late bool isLoggedIn;

  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    isLoggedIn = false;
  }

  static Future<void> tryLogin() async {
    final email = getData(key: 'email') as String?;
    final password = getData(key: 'password') as String?;
    if (email != null && password != null) {
      final response = await DioHelper.providerContainer!
          .read(authNotifierProvider.notifier)
          .login(
            email,
            password,
            showAllert: false,
          );
      if (response.item1) {
        isLoggedIn = true;
      }
    }
  }

  static Future<bool> putBoolean({
    required String key,
    required bool value,
  }) async {
    return sharedPreferences.setBool(key, value);
  }

  static dynamic getData({
    required String key,
  }) {
    return sharedPreferences.get(key);
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return sharedPreferences.setString(key, value);
    if (value is int) return sharedPreferences.setInt(key, value);
    if (value is bool) return sharedPreferences.setBool(key, value);

    return sharedPreferences.setDouble(key, value as double);
  }

  static Future<bool> removeData({
    required String key,
  }) async {
    return sharedPreferences.remove(key);
  }
}
