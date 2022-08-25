// ignore_for_file: avoid_dynamic_calls, avoid_bool_literals_in_conditional_expressions

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tamweel/main.dart';
import 'package:tamweel/models/ad/ad_model.dart';
import 'package:tamweel/models/banner/banner_model.dart';
import 'package:tamweel/models/financing_program/financing_program_model.dart';
import 'package:tamweel/models/loan/loan_model.dart';
import 'package:tamweel/models/user/user_details.dart';
import 'package:tamweel/shared/network/end_points.dart';
import 'package:tamweel/shared/network/remote/dio_helper.dart';
import 'package:tamweel/shared/style/app_color.dart';
import 'package:tamweel/shared/style/app_padding.dart';
import 'package:tamweel/shared/style/app_radius.dart';
import 'package:tuple/tuple.dart';

class ApiRepo {
  static Future<List<LoanData>> getLoans() async {
    List<LoanData>? loans;
    await DioHelper.getDate(url: AppEndPoints.getloans).then((response) {
      loans = LoanModel.fromJson(response.data as Map<String, dynamic>).data;
    });
    // ignore: avoid_print
    print(loans);
    return loans!;
  }

  static void _showAlertDialog(String message) {
    showDialog(
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: AppRadius.radius20,
          ),
          title: Text(
            'DioErrors.Error'.tr(),
            style: const TextStyle(
              color: AppColor.primary,
            ),
          ),
          content: Text(message),
          contentPadding: AppPadding.paddingH005,
          // titlePadding: AppPadding.paddingH005,
          // buttonPadding: AppPadding.paddingH005,
          // actionsPadding: AppPadding.padding10,
          // insetPadding: AppPadding.paddingH005,
          actions: <Widget>[
            TextButton(
              child: const Icon(
                Icons.close_rounded,
                color: AppColor.primary,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static Future<List<AdData>> getAds() async {
    List<AdData>? ads;

    /// call get request
    await DioHelper.getDate(url: AppEndPoints.ads).then((response) {
      ads = AdModel.fromJson(response.data as Map<String, dynamic>).data;
    });
    return ads!;
  }

  static Future<List<FinancingProgramData>> getFinancingPrograms() async {
    List<FinancingProgramData>? programs;

    /// call get request
    await DioHelper.getDate(url: AppEndPoints.getFinancingProgram)
        .then((response) {
      programs = FinancingProgramsModel.fromJson(
        response.data as Map<String, dynamic>,
      ).data;
    });
    return programs!;
  }

  ///User Details API Get Request
  static Future<UserDetails> getUserDetails(int id) async {
    final response =
        await DioHelper.getDate(url: '${AppEndPoints.getUserDetails}$id');

    return UserDetails.fromJson(response.data['data'] as Map<String, dynamic>);
  }

  ///User Sign Up Method
  static Future<Tuple2<bool, String>> signup({
    required String email,
    required String password,
    required String name,
    required String nationalId,
    required String phone,
    required String address,
    required int country,
    required int city,
    required int maritalStatus,
    required int gender,
  }) async {
    final data = {
      'email': email,
      'password': password,
      'name': name,
      'national_id': nationalId,
      'mobile': phone,
      'address': address,
      'country': country,
      'area': city,
      'marital_status': maritalStatus,
      'gender': gender,
    };
    // print(data);
    Response? response;
    try {
      response = await DioHelper.dio!.post(AppEndPoints.signup, data: data);
    } on DioError {
      // print(e.response);
    }
    // print(response!.data);
    final status = response!.data['status'] == 'true' ? true : false;
    return Tuple2(
      status,
      response.data['message'] as String,
    );
  }

  ///User Login Method
  static Future<Tuple2<bool, String>> login({
    required String email,
    required String password,
  }) async {
    final data = {
      'email': email,
      'password': password,
    };
    // print(data);
    Response? response;
    try {
      response = await DioHelper.dio!.post(AppEndPoints.login, data: data);
    } on DioError catch (e) {
      //show error message
      // print(e.toString());
      _showAlertDialog(e.toString());
      return Tuple2(false, e.toString());
    }
    // print(response!.data);
    final status = response.data['status'] == 'true' ? true : false;
    return Tuple2(
      status,
      response.data['message'] as String,
    );
  }

  static Future<List<BannerData>> getHomeBanners() async {
    List<BannerData>? banners;

    /// call get request
    await DioHelper.getDate(url: AppEndPoints.banners).then((response) {
      banners = BannerModel.fromJson(
        response.data as Map<String, dynamic>,
      ).data;
    });
    return banners!;
  }

  static Future<List<LoanData>> getMostWantedLoans() async {
    List<LoanData>? mostWantedLoans;

    /// call get request
    await DioHelper.getDate(url: AppEndPoints.mostWantedLoans).then((response) {
      mostWantedLoans = LoanModel.fromJson(
        response.data as Map<String, dynamic>,
      ).data;
    });
    return mostWantedLoans!;
  }
}
