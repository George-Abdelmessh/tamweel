import 'package:tamweel/models/ad/ad_model.dart';
import 'package:tamweel/models/banner/banner_model.dart';
import 'package:tamweel/models/financing_program/financing_program_model.dart';
import 'package:tamweel/models/loan/loan_model.dart';
import 'package:tamweel/shared/network/end_points.dart';
import 'package:tamweel/shared/network/remote/dio_helper.dart';

class ApiRepo {
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

  static Future<List<BannerData>> getHomeBanners() async {
    List<BannerData>? banners;

    /// call get request
    await DioHelper.getDate(url: AppEndPoints.banners)
        .then((response) {
      banners = BannerModel.fromJson(
        response.data as Map<String, dynamic>,
      ).data;
    });
    return banners!;
  }

  static Future<List<LoanData>> getMostWantedLoans() async {
    List<LoanData>? mostWantedLoans;

    /// call get request
    await DioHelper.getDate(url: AppEndPoints.mostWantedLoans)
        .then((response) {
      mostWantedLoans = LoanModel.fromJson(
        response.data as Map<String, dynamic>,
      ).data;
    });
    return mostWantedLoans!;
  }
}
