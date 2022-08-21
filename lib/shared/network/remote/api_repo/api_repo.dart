import 'package:flutter/material.dart';
import 'package:tamweel/models/ad/ad_model.dart';
import 'package:tamweel/shared/network/end_points.dart';
import 'package:tamweel/shared/network/remote/dio_helper.dart';
import 'package:tamweel/shared/style/app_color.dart';

class ApiRepo {
  static Future<List<AdData>> getAds (BuildContext context) async {
    List<AdData>? ads;
    /// start circular indicator
    //
    // showDialog(
    //   context: context,
    //   barrierDismissible: false,
    //   builder: (context) => const Center(
    //     child: CircularProgressIndicator(
    //       color: AppColor.primary,
    //     ),
    //   ),
    // );

    /// call get request
     await DioHelper.getDate(url: AppEndPoints.ads).then((response) {
       print('repo');
       print(response);
       print(AdModel.fromJson(response.data as Map<String, dynamic>).data.toString());
      ads = AdModel.fromJson(response.data as Map<String, dynamic>).data;
      print(ads!.length);
      /// stop circular indicator
      // Navigator.pop(context);
    });
    return ads!;
  }
}